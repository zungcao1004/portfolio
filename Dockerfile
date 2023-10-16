FROM ubuntu

WORKDIR /app
COPY . /app

RUN apt-get update && apt-get upgrade && apt-get install python3 curl -y
CMD python3 -m http.server 8080

EXPOSE 8080