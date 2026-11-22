FROM caddy:builder AS builder

RUN xcaddy build \
    --with github.com/jpillora/ipfilter-caddy

FROM caddy:latest

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
