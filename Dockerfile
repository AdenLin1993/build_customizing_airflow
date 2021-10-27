# 选择ubuntu:18.04 amd64处理架构的生产环境服务器系统
FROM docker.io/library/ubuntu@sha256:fc0d6af5ab38dab33aa53643c4c4b312c6cd1f044c1a2229b2743b252b9689fc
# 切换操作者为管理员
USER root
# 更新apt应用软件仓库列表
# 安装vim文件编辑工具
# 安装traceroute网络检查工具
# 安装telnet网络检查工具
# 安装ping网络检查工具
# 安装wget网络下载工具
# 安装gcc编译工具、make安装工具、automake、autoconf、libtool（安装Python依赖工具）
# 安装libffi-dev、zlib1g、zlib1g.dev(解压）(python安装依赖工具，如果是centos系统需要安装的是libffi-devel)
# 安装ssl认证工具
RUN apt update; \
    apt install -y vim; \
    apt install -y traceroute; \
    apt install -y telnet; \
    apt install -y iputils-ping; \
    apt install -y wget; \
    apt install -y gcc make automake autoconf libtool; \
    apt install -y libffi-dev zlib1g zlib1g.dev; \
    apt install -y openssl libssl-dev;
