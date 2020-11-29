FROM nginx:1.19-alpine

LABEL maintainer="Job Verplanke <job.verplanke@gmail.com>"
LABEL org.opencontainers.image.source="https://github.com/jobverplanke/docker-nginx"

ARG TZ

RUN set -eux \
    && apk add --no-cache tzdata \
    && ln -s /usr/share/zoneinfo/${TZ} /etc/localtime \
    && mkdir -p { \
        /etc/nginx/templates, /etc/nginx/snippets \
    }

COPY ./config/nginx.conf /etc/nginx/nginx.conf

COPY ./snippets/laravel.conf /etc/nginx/templates/laravel.conf.template
COPY ./snippets/mail.conf /etc/nginx/templates/mail.conf.template
COPY ./snippets/whoami.conf /etc/nginx/templates/whoami.conf.template

WORKDIR /var/www/html
