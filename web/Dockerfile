FROM nginx:1.14.2-alpine

RUN apk add --update --no-cache openrc bash

RUN sed -i 's/#rc_sys=""/rc_sys="lxc"/g' /etc/rc.conf &&\
    echo 'rc_provide="loopback net"' >> /etc/rc.conf &&\
    sed -i 's/^#\(rc_logger="YES"\)$/\1/' /etc/rc.conf &&\
    sed -i '/tty/d' /etc/inittab &&\
    sed -i 's/hostname $opts/# hostname $opts/g' /etc/init.d/hostname &&\
    sed -i 's/mount -t tmpfs/# mount -t tmpfs/g' /lib/rc/sh/init.sh &&\
    sed -i 's/cgroup_add_service /# cgroup_add_service /g' /lib/rc/sh/openrc-run.sh

# 設定ファイル nginx
ADD web/nginx.conf /etc/nginx/nginx.conf
ADD web/default.conf /etc/nginx/sites-available/default
ADD web/default.conf /etc/nginx/sites-enabled/default
ADD web/start-nginx.sh /etc/nginx/start-nginx.sh
ADD web/robots.txt /usr/share/nginx/robots.txt

RUN set -x \
	&& addgroup -g 82 -S www-data \
	&& adduser -u 82 -D -S -G www-data www-data

# Web Resource
RUN mkdir /var/www
RUN mkdir /var/www/public
ADD cms/public /var/www/public/
RUN mkdir /var/www/dist
ADD app/dist /var/www/dist/
