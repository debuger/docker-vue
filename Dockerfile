FROM node:9-alpine
ENV NPM_VER=5.3.0

RUN apk update && apk add --no-cache openssl curl libmcrypt tar git
#RUN curl -L https://www.npmjs.com/install.sh | sh
#RUN cd /tmp && wget https://registry.npmjs.org/npm/-/npm-${NPM_VER}.tgz && tar xzf npm-${NPM_VER}.tgz && cd package && ./scripts/install.sh
RUN npm install --user root --unsafe-perm true -g vue-cli
#RUN mkdir -p /project
WORKDIR /project
VOLUME ["/project"]
ENTRYPOINT ["npm"]
CMD ["run", "dev"]
EXPOSE 8080
