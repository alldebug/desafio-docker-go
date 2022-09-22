FROM golang:latest

ENV APP_PATH /go/src

WORKDIR ${APP_PATH}


COPY *.go ./

RUN go mod init desafio && \
  go mod download && \
  go mod verify && \
  go build

  
CMD [ "./desafio" ]