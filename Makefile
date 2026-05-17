# ==========================================
# MODULE: RenderCV Native Make Engine
# DESCRIPTION: Dependency-driven, modular build system for RenderCV.
# ==========================================

# 1. 核心全局变量
IMAGE       := kflyn825/resume-build:latest
BASE_DIR    := resume
MERGED_YAML := .merged_resume.yaml
OUT_DIR     := rendercv_output

# Docker 运行宏定义
DOCKER_CMD  = docker run --rm -u $(shell id -u):$(shell id -g) -v "$(PWD)":/workspace $(IMAGE) render $(MERGED_YAML)

# ==========================================
# 2. 目标级变量 (Profile 路由模块)
# ==========================================
# 默认组件 (当直接运行 `make` 时生效)
LOCALE ?= zh
DESIGN ?= my_them
CV     ?= cv_zh_internal

# 声明所有 Profile 为伪目标，直接输入 `make zh` 即可调用
.PHONY: default zh en zh-eng en-eng myth-zh myth-zh-internal myth-en

default: myth-zh-internal

zh:          LOCALE=zh
zh:          DESIGN=classic
zh:          CV=cv_zh
zh:          build

en:          LOCALE=en
en:          DESIGN=classic
en:          CV=cv_en
en:          build

zh-eng:      LOCALE=zh
zh-eng:      DESIGN=engineeringclassic
zh-eng:      CV=cv_zh
zh-eng:      build

myth-zh:     LOCALE=zh
myth-zh:     DESIGN=my_them
myth-zh:     CV=cv_zh
myth-zh:     build

myth-zh-internal: LOCALE=zh
myth-zh-internal: DESIGN=my_them
myth-zh-internal: CV=cv_zh_internal
myth-zh-internal: build

myth-en:     LOCALE=en
myth-en:     DESIGN=my_them
myth-en:     CV=cv_en
myth-en:     build

# ==========================================
# 3. 核心构建逻辑 (依赖追踪与自动合并模块)
# ==========================================
# 声明合并文件为中间产物，Make 运行结束后会自动安全删除它！
.INTERMEDIATE: $(MERGED_YAML)

# 开启二次展开：动态解析当前 Profile 下的 LOCALE/DESIGN/CV 依赖路径
.SECONDEXPANSION:
$(MERGED_YAML): $$(BASE_DIR)/cv/$$(CV).yaml $$(BASE_DIR)/design/$$(DESIGN).yaml $$(BASE_DIR)/locale/$$(LOCALE).yaml $$(BASE_DIR)/setting.yaml
	@echo "\033[36m[BUILD]\033[0m Aggregating dependencies into $@"
	@> $@
	@for file in $^; do \
		echo "  -> Merging: $$file"; \
		cat "$$file" >> $@; \
		echo "" >> $@; \
	done

# ==========================================
# 4. 执行与清理模块
# ==========================================
.PHONY: build clean help

# build 依赖于 $(MERGED_YAML)，只有当源 yaml 被修改时，才会触发这里的 Docker 渲染
build: $(MERGED_YAML)
	@echo "\033[32m[INFO]\033[0m Triggering RenderCV Engine (WSL2 Docker-CE)..."
	@$(DOCKER_CMD)
	@echo "\033[32m[SUCCESS]\033[0m Compilation finished. Check $(OUT_DIR)/"

clean:
	@echo "\033[33m[CLEAN]\033[0m Removing output directory and temporary files..."
	@rm -rf $(OUT_DIR) $(MERGED_YAML)

help:
	@echo "Usage: make [PROFILE]"
	@echo "Available Profiles:"
	@echo "  make zh               (Standard Chinese)"
	@echo "  make en               (Standard English)"
	@echo "  make zh-eng           (Engineering Theme Chinese)"
	@echo "  make myth-zh          (Custom Theme Standard CV)"
	@echo "  make myth-zh-internal (Custom Theme Internal CV - DEFAULT)"
	@echo "  make clean            (Clean outputs)"