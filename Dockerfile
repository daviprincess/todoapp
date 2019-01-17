FROM node:8.11.4
#Dockerfile 을 생성/관리하는 사람
MAINTAINER ggyu <gj0207@naver.com>
# 앱 디렉터리 생성
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
# 앱 의존성 설치
COPY package*.json ./
RUN npm install
COPY . .
#RUN npm run build
EXPOSE 8080
CMD [ "npm", "start" ]