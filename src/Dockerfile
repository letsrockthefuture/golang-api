FROM golang:latest AS build

WORKDIR /go/src/github.com/golang/golang-api
COPY . .

RUN CGO_ENABLED=0 go build -o server main.go

FROM alpine:latest

WORKDIR /go/src/github.com/golang/golang-api
COPY --from=build /go/src/github.com/golang/golang-api/server .

CMD [ "./server" ]