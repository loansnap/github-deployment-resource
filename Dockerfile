FROM golang:1.11-alpine
RUN apk update && \
    apk upgrade && \
    apk add git

ADD . /go/src/github.com/loansnap/github-deployment-resource
RUN go install github.com/loansnap/github-deployment-resource

WORKDIR /go/src/github.com/loansnap/github-deployment-resource
RUN /bin/ash ./scripts/build
