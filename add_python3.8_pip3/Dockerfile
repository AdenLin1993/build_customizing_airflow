# choose base image
FROM ubuntu:1804_amd64
# choose user
USER root
# first , install sqlite3 before compiling python
# choose user
# download python package
# unzip python package
# change work path
# Compile python
# install Python
# add Python and PIP soft link to the environment path
# delete unnecessary files
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
