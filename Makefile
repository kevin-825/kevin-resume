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

# 变量赋默认值 (支持通过子 Make 动态覆写)
LOCALE ?= zh
DESIGN ?= my_them
CV     ?= cv_zh_internal

# 动态组装当前 Profile 的依赖路径
DEPS := $(BASE_DIR)/cv/$(CV).yaml $(BASE_DIR)/design/$(DESIGN).yaml $(BASE_DIR)/locale/$(LOCALE).yaml $(BASE_DIR)/setting.yaml

# ==========================================
# 2. Profile 路由模块 (使用子 Make 确保变量绝对生效)
# ==========================================
.PHONY: default zh en zh-eng myth-zh myth-zh-internal myth-en build clean help

default: myth-zh-internal

zh:
	@$(MAKE) build LOCALE=zh DESIGN=classic CV=cv_zh

en:
	@$(MAKE) build LOCALE=en DESIGN=classic CV=cv_en

zh-eng:
	@$(MAKE) build LOCALE=zh DESIGN=engineeringclassic CV=cv_zh

myth-zh:
	@$(MAKE) build LOCALE=zh DESIGN=my_them CV=cv_zh

myth-zh-internal:
	@$(MAKE) build LOCALE=zh DESIGN=my_them CV=cv_zh_internal

myth-en:
	@$(MAKE) build LOCALE=en DESIGN=my_them CV=cv_en

# ==========================================
# 3. 核心构建逻辑 (依赖追踪与自动合并模块)
# ==========================================
# 只有当 DEPS 里定义的四个文件有任何一个被修改时，才会触发 YAML 合并
$(MERGED_YAML): $(DEPS)
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
# build 依赖于 MERGED_YAML。只有当 MERGED_YAML 发生更新时，才会触发 Docker
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