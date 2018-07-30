#!/usr/bin/sh

set -x

tree /go

go build -i main.go
file main
ls -l main
tree /go/pkg

go build -i -a -tags netgo -installsuffix netgo main.go
file main
ls -l main
tree /go/pkg

go build -i -ldflags '-extldflags "-static"' main.go
file main
ls -l main

CGO_ENABLED=0 go build main.go
file main
ls -l main
