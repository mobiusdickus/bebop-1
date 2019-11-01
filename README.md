# flask-react-gunicorn-nginx
Framework for building a dockerized flask, react, gunicorn, and nginx app 

## Prerequisites

1) Install  `docker` and `docker-compose`
2) Load `.envrc` (I'm using `direnv` for this project)

## Development

Run `make develop`

The env variable `ENVIRONMENT` will determine which docker compose file to run. There are configurations for both production and development.

### Notes

In the case of the development environment, containers for a flask api, react app, and nginx server will be created and running with hot reloading enabled.

In the case of the production environment, containers for the flask api and nginx server will be created and running with the react app built and copied into the nginx server via multi-stage build. The aim of this is to more closely mimic a live production environment allowing for necessary configuration changes to be done more explicitly.


## To Do

- [x] Add production env distinction
- [ ] Add letsencrypt for free ssl certs
- [ ] Add a database
- [ ] Add caching
