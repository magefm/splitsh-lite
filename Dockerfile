FROM golang:1.17

RUN apt-get update && \
    apt-get install -yq libgit2-dev
