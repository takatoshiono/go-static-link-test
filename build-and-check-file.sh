#!/usr/bin/sh

set -x

go build main.go
file main
go build -a -tags netgo -installsuffix netgo main.go
file main
go build -ldflags '-extldflags "-static"' main.go
file main
