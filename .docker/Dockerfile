
# 使用 Python 3.12 官方镜像作为基础
FROM python:3.12-slim

# 设置环境变量
ENV PYTHONUNBUFFERED=1
ENV DEBIAN_FRONTEND=noninteractive

# 修复：LABEL 拼写错误，原代码是 ABEL
LABEL maintainer="kevin@riscv.dev"

# 定义用户构建参数
ARG UID=1000
ARG GID=1000
ARG USERNAME="kevin"
ENV HOME=/home/$USERNAME

# 1. 安装系统依赖
# 修复：添加了 sudo 和 zsh，因为你后面的脚本用到了它们
RUN apt-get update && apt-get install -y --no-install-recommends \
    vim wget openssh-client nano curl ca-certificates locales \
    fonts-noto-cjk \
    fonts-wqy-microhei \
    fontconfig \
    libnss3 \
    libatk-bridge2.0-0 \
    libgtk-3-0 \
    libxss1 \
    libasound2 \
    sudo \
    zsh \
    && rm -rf /var/lib/apt/lists/* \
    && fc-cache -fv

# 2. 升级 pip 并安装全功能版 RenderCV
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir "rendercv[full]"

# 3. 创建非 root 用户并配置权限
# 注意：使用 <<EOF 需要确保你的 Docker 环境开启了 BuildKit (默认开启)
RUN <<EOF
  set -e
  if id "ubuntu" &>/dev/null; then
    echo ">>> Removing default 'ubuntu' user to free up UID 1000"
    userdel -r ubuntu || true
  fi
  echo ">>> Creating user '$USERNAME' with UID $UID and GID $GID"
  groupadd -g ${GID} -o ${USERNAME}
  # 注意：这里指定了 /usr/bin/zsh
  useradd -u ${UID} -m -g ${USERNAME} -G sudo,plugdev -s /usr/bin/zsh ${USERNAME}
  echo "${USERNAME} ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/${USERNAME}
  chmod 0440 /etc/sudoers.d/${USERNAME}
EOF

# 切换到非 root 用户
USER $USERNAME
WORKDIR /workspace

# 默认入口点
ENTRYPOINT ["rendercv"]

# 默认执行命令
CMD ["render", "resume-zh.yaml"]