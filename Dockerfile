FROM golang:1.20.4-alpine3.17
# Use the official Golang image as a base
WORKDIR /app

COPY . .

RUN go build -o api .

EXPOSE 8081

CMD ["./api"]