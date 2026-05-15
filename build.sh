#!/bin/bash
# MODULE: resume_compiler.sh
# DESCRIPTION: Profile-driven modular compilation engine for RenderCV.

set -euo pipefail

# ==========================================
# Configuration & Globals
# ==========================================
readonly IMAGE_NAME="kflyn825/resume-build:latest"
readonly BASE_DIR="resume"
readonly MERGED_YAML=".merged_resume.yaml"

# 核心字典：定义 Profile 映射关系
# 格式: ["profile_name"]="target_lang target_theme"
declare -A PROFILES=(
    ["zh"]="zh classic"                 # 中文默认：经典主题
    ["en"]="en classic"                 # 英文默认：经典主题
    ["zh-eng"]="zh engineeringclassic"  # 中文：工程师主题
    ["en-eng"]="en engineeringclassic"  # 英文：工程师主题
)

# ==========================================
# Utility Functions
# ==========================================
log_info() {
    echo -e "\e[32m[INFO]\e[0m $1"
}

log_err() {
    echo -e "\e[31m[ERROR]\e[0m $1" >&2
}

cleanup() {
    if [[ -f "$MERGED_YAML" ]]; then
        log_info "Cleaning up temporary merged file ($MERGED_YAML)..."
        rm -f "$MERGED_YAML"
    fi
}

show_usage() {
    echo "Usage: ./build.sh [PROFILE]"
    echo "Available profiles:"
    for p in "${!PROFILES[@]}"; do 
        echo -e "  \e[36m$p\e[0m -> lang: $(echo ${PROFILES[$p]} | awk '{print $1}'), theme: $(echo ${PROFILES[$p]} | awk '{print $2}')"
    done
}

# ==========================================
# Core Build Functions
# ==========================================
assemble_yaml() {
    local lang=$1
    local theme=$2
    local target=$3

    # 根据 lang 变量自动匹配对应的 CV 内容文件和语言配置
    local cv_file="${BASE_DIR}/cv/cv_${lang}.yaml"
    local design_file="${BASE_DIR}/design/${theme}.yaml"
    local locale_file="${BASE_DIR}/locale/${lang}.yaml"
    local setting_file="${BASE_DIR}/setting.yaml"

    local component_files=(
        "$cv_file"
        "$design_file"
        "$locale_file"
        "$setting_file"
    )

    log_info "Aggregating YAML components for Lang: \e[1m$lang\e[0m, Theme: \e[1m$theme\e[0m..."
    
    > "$target"

    for file in "${component_files[@]}"; do
        if [[ -f "$file" ]]; then
            log_info "  -> Merging: $file"
            cat "$file" >> "$target"
            echo "" >> "$target"
        else
            log_err "Missing required component file: $file"
            exit 1
        fi
    done
}

run_rendercv() {
    local target_yaml=$1
    
    log_info "Triggering RenderCV Docker Engine..."
    
    if docker run --rm \
        -u $(id -u):$(id -g) \
        -v "$(pwd)":/workspace \
        "$IMAGE_NAME" render "$target_yaml"; then
        log_info "Compilation Success! Check the 'rendercv_output/' directory."
    else
        log_err "RenderCV Engine failed during PDF generation."
        exit 1
    fi
}

# ==========================================
# Main Execution Entrypoint
# ==========================================
main() {
    # 默认 Profile 设为 zh
    local selected_profile=${1:-"zh"}

    # 查字典：验证 Profile 是否存在
    if [[ -z "${PROFILES[$selected_profile]:-}" ]]; then
        log_err "Profile '$selected_profile' not found in dictionary!"
        show_usage
        exit 1
    fi

    # 解包字典的值：将 "zh classic" 拆分给两个变量
    read -r target_lang target_theme <<< "${PROFILES[$selected_profile]}"

    trap cleanup EXIT

    log_info "Starting build with Profile: \e[1;33m$selected_profile\e[0m"

    assemble_yaml "$target_lang" "$target_theme" "$MERGED_YAML"
    run_rendercv "$MERGED_YAML"
}

main "$@"