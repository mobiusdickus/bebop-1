FROM node:10.13 as build-app

WORKDIR /srv

# Install dependencies
COPY package.json yarn.lock ./
RUN yarn

# Add the project
COPY . ./

RUN yarn build
CMD yarn run
