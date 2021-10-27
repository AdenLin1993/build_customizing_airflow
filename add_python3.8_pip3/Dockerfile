# 选择含基本工具的ubuntu:18.04 amd64处理架构的生产环境服务器系统
FROM ubuntu:1804_amd64
# 切换操作者为管理员
USER root
# 需要先安装sqlite3，再编译python才能在Python中调用sqlite3
# 切换工作目录
# 下载需要安装的Python版本包
# 解压Python安装包
# 切换到指定路径下工作
# 编译python安装文件到指定路径、ssl是为了pip导入资源需求、启用sqlite嵌入、编译优化
# 安装Python 
# 将python和pip执行文件编辑一个软链接到已有的环境变量路径中
# 删除python 3.8解压包，压缩包，本来存在的python3.6资源
RUN apt install -y libsqlite3-dev; \ 
    cd /tmp; \
    wget https://www.python.org/ftp/python/3.8.4/Python-3.8.4.tgz; \
    tar -xzf Python-3.8.4.tgz; \
    cd Python-3.8.4; \
    ./configure --with-ssl --prefix=/usr/local/python3 --enable-loadable-sqlite-extensions --enable-optimizations; \
    make && make install; \
    ln -s /usr/local/python3/bin/python3.8 /usr/bin/python; \
    ln -s /usr/local/python3/bin/pip3.8 /usr/bin/pip; \
    rm -r /tmp/Python-3.8.4; \
    rm /tmp/Python-3.8.4.tgz; \
    rm -r usr/lib/python3.6; \
    rm -r /etc/python3.6;
