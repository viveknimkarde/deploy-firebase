FROM node:10-slim
RUN npm install -g firebase-tools
RUN npm install -g eslint
COPY entrypoint.sh /usr/local/bin
ENTRYPOINT ["entrypoint.sh"]
