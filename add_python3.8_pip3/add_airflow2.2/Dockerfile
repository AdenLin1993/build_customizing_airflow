# choose base image
FROM ubuntu:1804_amd64_python3.8_pip3
# choose user
USER root
# Install the MySQL driver
# Upgrade PIP to the latest version
# Install airflow using PYPI
# Add the airflow soft link to the environment path
RUN apt install -y python3-mysqldb; \
    pip install --upgrade pip; \
    export AIRFLOW_HOME=/root/airflow; \
    AIRFLOW_VERSION=2.2.0; \
    CONSTRAINT_URL="https://raw.githubusercontent.com/apache/airflow/constraints-2.2.0/constraints-3.8.txt"; \
    pip install "apache-airflow==${AIRFLOW_VERSION}" --constraint "${CONSTRAINT_URL}"; \
    ln -s /usr/local/python3/bin/airflow /usr/bin/airflow;

