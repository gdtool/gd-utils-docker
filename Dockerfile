FROM alpine
MAINTAINER q409640976 <4096409176@gmail.com>
ARG VERSION=2020-07-06

ENV USERPWD mysecrdet
USER root

ADD start.sh /
COPY alpine.patch /alpine.patch



RUN set -ex \
        && apk update \
        && apk add --no-cache nodejs npm \
		&& apk add ca-certificates mailcap curl bash \
        && apk add --no-cache --virtual .build-deps make gcc g++ python3 git \
        && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
        && echo "Asia/Shanghai" > /etc/timezone

ARG VERSION
RUN set -ex \
        && git clone https://github.com/iwestlin/gd-utils /gd-utils \
        && cd /gd-utils \
		&& mv -f /gd-utils/config.js /gd-utils/sa/config.js \
		&& ln -sf /gd-utils/sa/config.js /gd-utils/config.js \
        && npm install \
        && apk del .build-deps


RUN apk add --no-cache --update --virtual build-deps alpine-sdk autoconf automake libtool curl tar git && \
        adduser -D -H shusr && \
        git clone https://github.com/shellinabox/shellinabox.git /shellinabox && \
        cd /shellinabox && \
        git apply /alpine.patch && \
        autoreconf -i && \
        ./configure --prefix=/shellinabox/bin && \
        make && make install && cd / && \
        mv /shellinabox/bin/bin/shellinaboxd /gd-utils/sa/shellinaboxd && \
        rm -rf /shellinabox && \
        apk del build-deps && rm -rf /var/cache/apk/
COPY filebrowser.json /.filebrowser.json
RUN curl -fsSL https://filebrowser.xyz/get.sh | bash
RUN chmod +x /start.sh && \
	chmod 777 /gd-utils/sa/shellinaboxd
		
EXPOSE 23333 4200 80
VOLUME /gd-utils/sa


ENTRYPOINT [ "/start.sh" ]