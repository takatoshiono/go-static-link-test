FROM golang:1.10

WORKDIR /go/src/app
COPY main.go .
RUN go build main.go

FROM alpine:latest

WORKDIR /app
COPY --from=0 /go/src/app/main .
CMD ["./main"]
