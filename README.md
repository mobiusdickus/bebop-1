# bebop-1
My personal projects built off a basic dockerized framework for small personal projects hosted on a single instance server.
Portable and compatible to any machine that can run docker/docker-compose.

## Build
Utlizes [nginx-proxy/nginx-proxy](https://github.com/nginx-proxy/nginx-proxy) for reverse proxy configs and 
[nginx-proxy/letsencrypt-nginx-proxy-companion](https://github.com/nginx-proxy/docker-letsencrypt-nginx-proxy-companion)
for ssl certification.

See their documentation for adding projects to the docker-compose.production.yml.

Example services file path (build context):
`./projects/<your project>/containers/<your services>`

## Prerequisites
1) Install  `docker` and `docker-compose`
2) Add docker projects to `projects` directory

## Development
Run `make develop`

## Production
Run `make production`

## Notes
Current projects running:
1. ctchan.me
2. thedaisycabin.com
