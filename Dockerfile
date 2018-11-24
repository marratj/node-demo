FROM node:11.1.0

COPY devops-demo /usr/src/devops-demo

WORKDIR /usr/src/devops-demo

RUN npm install

CMD ["npm", "start"]