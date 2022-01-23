FROM python:3.8-buster
WORKDIR /usr/src/app
COPY ./src/requirements.txt ./
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y unixodbc-dev \
    && apt-get clean
