FROM node:12.13.0-alpine
RUN apk update && \
    apk add git && \
    npm install -g @vue/cli nuxt create-nuxt-app
WORKDIR /node/app
