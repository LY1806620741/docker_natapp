FROM nginx
MAINTAINER Jieshao <1806620741@qq.com>

ADD default.conf /etc/nginx/conf.d/default.conf

ENV HOST localhost:80

ENV TOKEN 123456678

ENV PORT 80

ADD natapp /

RUN chmod +x /natapp

ADD config.sh /

ENTRYPOINT sh config.sh
