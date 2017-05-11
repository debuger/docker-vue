FROM node:7-alpine

RUN apk update && apk add --no-cache curl libmcrypt tar
RUN curl -L https://www.npmjs.com/install.sh | sh
RUN mkdir -p /project
WORKDIR /project
VOLUME ["/project", "/usr/local/lib/node_modules"]
ENTRYPOINT ["npm"]
CMD ["run", "dev"]
