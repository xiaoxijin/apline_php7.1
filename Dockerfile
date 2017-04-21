FROM registry.cn-shenzhen.aliyuncs.com/xiaoxijin/apline:latest

Maintainer Xijin Xiao (http://github.com/xiaoxijin/)

RUN apk add php7
ADD php.ini /etc/php7/

RUN ln -fs /usr/bin/php7 /usr/bin/php && rm -rf /var/cache/apk/ && mkdir /var/cache/apk && rm -rf /tmp/*

