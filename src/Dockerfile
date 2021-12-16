FROM golang:latest AS build

WORKDIR /go/src/github.com/golang/go-example-argocd

COPY . .

RUN CGO_ENABLED=0 go build -o webserver main.go

FROM alpine:latest

WORKDIR /go/src/github.com/golang/go-example-argocd

COPY --from=build /go/src/github.com/golang/go-example-argocd/webserver .

CMD [ "./webserver" ]