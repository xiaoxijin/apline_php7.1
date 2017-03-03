FROM registry.cn-shenzhen.aliyuncs.com/xiaoxijin/apline:latest

Maintainer Xijin Xiao (http://github.com/xiaoxijin/)



ADD build_swoole_so.sh /root/

RUN sh /root/build_swoole_so.sh

ADD php.ini /etc/php7/

RUN php -i && php -m

