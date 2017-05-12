FROM node:7-alpine

RUN apk update && apk add --no-cache curl libmcrypt tar git
RUN curl -L https://www.npmjs.com/install.sh | sh
RUN npm install --user root --unsafe-perm true -g vue-cli
#RUN mkdir -p /project
WORKDIR /project
VOLUME ["/project"]
ENTRYPOINT ["npm"]
CMD ["run", "dev"]
EXPOSE 8080
