FROM golang:latest

RUN apt-get update

WORKDIR /app

COPY src/hello.go .

RUN go mod init hello
RUN go build -o hello .

CMD ["./hello"]