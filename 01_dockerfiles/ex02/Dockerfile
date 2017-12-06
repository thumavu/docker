FROM ruby:latest
MAINTAINER Thulasizwe Mavuso thumavu@student.wethinkcode.co.za

RUN apt-get update -y
RUN apt-get upgrade -y
RUN gem install rails
RUN apt-get install nodejs -y

ONBUILD COPY . /opt/app
ONBUILD WORKDIR /opt/app

ONBUILD RUN build install
ONBUILD RUN rails db:migrate
ONBUILD RUN rails db:seed

ENTRYPOINT [ "rails" ]