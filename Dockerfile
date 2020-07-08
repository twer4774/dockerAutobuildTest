#베이스 이미지 설정
FROM ubuntu

#Nginx 설치
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install nginx

#포트 지정
EXPOSE 80

#웹 콘텐츠 배치
ONBUILD ADD website.tar /var/www/html

#Nginx 실행
CMD ["nginx", "-g", "daemon off;"]
