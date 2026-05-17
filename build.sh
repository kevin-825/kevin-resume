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
# 格式: ["profile_name"]="locale design cv"
declare -A PROFILES=(
    ["zh"]="zh classic cv_zh"                             # 中文标准版
    ["en"]="en classic cv_en"                             # 英文标准版
    ["zh-eng"]="zh engineeringclassic cv_zh"              # 中文：工程师主题
    ["en-eng"]="en engineeringclassic cv_en"              # 英文：工程师主题
    ["myth-zh"]="zh my_them cv_zh"                        # 中文：自定义主题
    ["myth-zh-int"]="zh my_them cv_zh_internal"           # 中文：自定义主题 (使用 Internal 战术背书版)
    ["myth-en"]="en my_them cv_en"                        # 英文：自定义主题
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
        read -r loc des cv_file <<< "${PROFILES[$p]}"
        echo -e "  \e[36m$p\e[0m -> locale: $loc, design: $des, cv: $cv_file"
    done
}

# ==========================================
# Core Build Functions
# ==========================================
assemble_yaml() {
    local target_locale=$1
    local target_design=$2
    local target_cv=$3
    local output_file=$4

    # 精准映射到你定义的三个核心组件
    local cv_file="${BASE_DIR}/cv/${target_cv}.yaml"
    local design_file="${BASE_DIR}/design/${target_design}.yaml"
    local locale_file="${BASE_DIR}/locale/${target_locale}.yaml"
    local setting_file="${BASE_DIR}/setting.yaml"

    local component_files=(
        "$cv_file"
        "$design_file"
        "$locale_file"
        "$setting_file"
    )

    log_info "Aggregating YAML components..."
    log_info "  -> Locale: \e[1m$target_locale\e[0m"
    log_info "  -> Design: \e[1m$target_design\e[0m"
    log_info "  -> CV:     \e[1m$target_cv\e[0m"
    
    > "$output_file"

    for file in "${component_files[@]}"; do
        if [[ -f "$file" ]]; then
            log_info "  -> Merging: $file"
            cat "$file" >> "$output_file"
            echo "" >> "$output_file"
        else
            log_err "Missing required component file: $file"
            exit 1
        fi
    done
}

run_rendercv() {
    local target_yaml=$1
    
    log_info "Triggering RenderCV Docker Engine (WSL2 Docker-CE)..."
    
    if docker run --rm \
        -u $(id -u):$(id -g) \
        -v "$(pwd)":/workspace \
        "$IMAGE_NAME" render "$target_yaml"; then
        echo ""
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
    # 默认 Profile 设为你刚写的中文 internal 版，方便调试
    local selected_profile=${1:-"myth-zh"}

    # 查字典：验证 Profile 是否存在
    if [[ -z "${PROFILES[$selected_profile]:-}" ]]; then
        log_err "Profile '$selected_profile' not found in dictionary!"
        show_usage
        exit 1
    fi

    # 解包字典的值：将 "locale design cv" 分别赋值给三个独立变量
    read -r target_locale target_design target_cv <<< "${PROFILES[$selected_profile]}"

    # 注册清理钩子，确保无论成功还是失败都会删除临时合并文件
    trap cleanup EXIT

    log_info "Starting build with Profile: \e[1;33m$selected_profile\e[0m"

    # 执行模块化流水线
    assemble_yaml "$target_locale" "$target_design" "$target_cv" "$MERGED_YAML"
    run_rendercv "$MERGED_YAML"
}

main "$@"