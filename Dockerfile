FROM node:12

RUN npm install --global @box/cli

USER node

WORKDIR /home/node

RUN mkdir -p .box Documents Downloads

VOLUME .box Documents Downloads

ENTRYPOINT [ "/usr/local/bin/box" ]

