FROM node:alpine

RUN apk --no-cache add bash git &&\
    export npm_config_cache=$(mktemp -d)  &&\
    npm install -g eclint  &&\
    rm -rf $npm_config_cache

COPY rootfs /

ENTRYPOINT ["/usr/local/bin/entrypoint"]
CMD ["run_plugin"]
