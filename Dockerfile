FROM ubuntu:latest
ENV GOPATH /go
WORKDIR /go
ENV PATH $PATH:/go/bin

RUN \
  mkdir -p /go && \
  apt-get update && \
  apt-get install -y git ruby-dev curl libffi-dev build-essential && \
  gem install travis

CMD ["bash"]
