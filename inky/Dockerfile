FROM node:8.2

RUN apt-get update && \
  apt-get install -y curl git bzip2

RUN apt-get update && apt-get install -y curl apt-transport-https && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && apt-get install -y yarn

RUN yarn add foundation-cli \
		yarn add bower \
		yarn add node-sass \
		yarn add gulp

VOLUME ["/app"]
WORKDIR /app

ENTRYPOINT ["yarn"]
