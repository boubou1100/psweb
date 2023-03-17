# # Application de test pour l'article Linux Magazine
# Linux x64
FROM alpine

LABEL maintainer="trabou50@gmail.com" \
      application-type="NodeJs" \
      creation-date="18/03/2023"

# Install Node and NPM
RUN apk add --update nodejs npm

# Copy app to /src
COPY . /src

WORKDIR /src

# Install dependencies
RUN  npm install

EXPOSE 8080

ENTRYPOINT ["node", "./app.js"]
