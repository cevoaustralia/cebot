FROM alpine:3.13.6
MAINTAINER Colin Panisset, colin.panisset@cevo.com.au

ENV BOTDIR /bot

RUN apk add --update-cache wget bash nodejs nodejs-npm git

COPY bin ${BOTDIR}/bin/
COPY scripts ${BOTDIR}/scripts/
COPY *.json ${BOTDIR}/

WORKDIR ${BOTDIR}

RUN npm install

ENV HUBOT_PORT 8080

ENV HUBOT_ADAPTER slack
ENV HUBOT_NAME cebot
ENV HUBOT_SLACK_TEAM cevoteam
ENV HUBOT_SLACK_BOTNAME cebot
ENV PORT ${HUBOT_PORT}

# These ones need to remain private and
# be overridden on the command line
ENV HUBOT_SLACK_TOKEN xxxxxxxxxx
ENV HUBOT_STANDUP_PREPEND "<!here>"

EXPOSE ${HUBOT_PORT}

CMD bin/hubot

