FROM ubuntu:trusty

MAINTAINER Pierre Breitschmitt <pierre@loobaz.com>

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y bind9 dnsutils
RUN apt-get clean && rm -r /var/lib/apt/lists/*

RUN mkdir /app
ADD app /app
RUN chmod +x /app/start

WORKDIR /app

EXPOSE 53

CMD ["/app/start"]