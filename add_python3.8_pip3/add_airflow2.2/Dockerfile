# 选择含python及基本工具的ubuntu:18.04 amd64处理架构的生产环境服务器系统
FROM ubuntu:1804_amd64_python3.8_pip3
# 切换操作者为管理员
USER root
# 拷贝容易安装失败的第三方包列表
COPY requirements.txt /tmp/requirements.txt
# 安装MySQL驱动，建立数据库连接网络
# 将pip升级到最新版本
# 提前安装airflow安装时容易安装失败的依赖
# 使用PYPI安装airflow
# 将airflow的软链接添加到环境变量中
RUN apt install -y python3-mysqldb; \
    pip install --upgrade pip; \
    # pip install -r /tmp/requirements.txt; \
    export AIRFLOW_HOME=/root/airflow; \
    AIRFLOW_VERSION=2.2.0; \
    CONSTRAINT_URL="https://raw.githubusercontent.com/apache/airflow/constraints-2.2.0/constraints-3.8.txt"; \
    pip install "apache-airflow==${AIRFLOW_VERSION}" --constraint "${CONSTRAINT_URL}"; \
    ln -s /usr/local/python3/bin/airflow /usr/bin/airflow;

