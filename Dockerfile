FROM golang:latest

ENV APP_PATH /go/src

WORKDIR ${APP_PATH}


COPY *.go ./

# GOOS=linux expecifica o sistema operacional
# GOARCH=amd64 especifica a plataform
# CGO_ENABLE=0 ignore a compilação C pelo OS
# -ldflags="-w -s" ignora alguns testes, o que reduz o tamanho

RUN go mod init desafio && \
  go mod download && \
  go mod verify && \
  GOOS=linux GOARCH=amd64 CGO_ENABLE=0 go build

  
CMD [ "./desafio" ]