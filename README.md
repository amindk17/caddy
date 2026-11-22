# caddy

Custom Caddy image (latest Caddy + [ipfilter-caddy](https://github.com/jpillora/ipfilter-caddy)), published to `ghcr.io/amindk17/caddy:latest`.

Build and push: run the VS Code task **docker: build & push**. The login step needs `gh auth login` with the `write:packages` scope (`gh auth refresh -s write:packages`).

Caddyfile usage (GeoLite2-Country data is embedded; no database file needed):

```
(block_russia) {
    @blocked_ru ipfilter_geolocation {
        deny_countries RU
    }
    respond @blocked_ru "Forbidden" 403
}
```
