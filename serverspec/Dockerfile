FROM ruby:2.3.1-alpine

ENV SERVERSPEC_VERSION 2.37.2
ENV RAKE_VERSION 11.3.0
ENV RUBOCOP_VERSION 0.45.0
ENV DOCKER_API_VERSION 1.33.1
ENV CMD_WRAPPER_PATH /usr/local/bin
ENV CMD_WRAPPER_FILE ${CMD_WRAPPER_PATH}/cmd_wrapper.sh

RUN apk add --update bash && rm -rf /var/cache/apk/*

RUN gem install serverspec -v ${SERVERSPEC_VERSION} \
    && gem install rake -v ${RAKE_VERSION} \
    && gem install rubocop -v ${RUBOCOP_VERSION} \
    && gem install docker-api -v ${DOCKER_API_VERSION}

ADD cmd_wrapper.sh $CMD_WRAPPER_PATH
RUN chmod 755 $CMD_WRAPPER_FILE

VOLUME ["/app"]

WORKDIR /app

ENTRYPOINT ["/bin/bash","/usr/local/bin/cmd_wrapper.sh"]
