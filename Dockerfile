FROM registry.cn-shenzhen.aliyuncs.com/xiaoxijin/apline:latest

Maintainer Xijin Xiao (http://github.com/xiaoxijin/)

RUN echo "http://nl.alpinelinux.org/alpine/latest-stable/main" > /etc/apk/repositories \
&& echo "http://nl.alpinelinux.org/alpine/edge/testing/" >> /etc/apk/repositories \
&& echo "http://nl.alpinelinux.org/alpine/edge/community/" >> /etc/apk/repositories \
&& echo "nameserver 8.8.8.8" >> /etc/resolv.conf && apk update && apk upgrade \
&& apk add php7.1 \
&& ln -fs /usr/bin/php7.1 /usr/bin/php \
&& rm -rf /var/cache/apk/ && mkdir /var/cache/apk && rm -rf /tmp/*

ADD php.ini /etc/php7.1/