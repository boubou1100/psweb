# # Application de test pour l'article Linux Magazine
# Linux x64
FROM alpine

LABEL maintainer="issam.mejri@yahoo.fr" \
      application-type="NodeJs" \
      creation-date="29/10/2022"

# Install Node and NPM
RUN apk add --update nodejs npm

# Copy app to /src
COPY . /src

WORKDIR /src

# Install dependencies
RUN  npm install

EXPOSE 8080

ENTRYPOINT ["node", "./app.js"]
