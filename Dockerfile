FROM golang:1.19

WORKDIR /app

RUN go mod init tests

COPY . .

RUN go build -o math

CMD ["./math"]