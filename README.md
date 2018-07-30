# go-static-link-test

## Build and Run

Run

```
$ make build && make run
```

Output:
```
hello world.
addresses of golang.org: [172.217.161.81 2404:6800:4004:80b::2011]
```

## Build with some options and check file type

Run

```
$ make debug-build && make debug
```

When the console is displayed, execute this command to build and check file type.

```
# sh build-and-check-file.sh
```

Output:
```
+ go build main.go
+ file main
main: ELF 64-bit LSB executable, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, not stripped
+ go build -a -tags netgo -installsuffix netgo main.go
+ file main
main: ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, not stripped
+ go build -ldflags -extldflags "-static" main.go
+ file main
main: ELF 64-bit LSB executable, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, not stripped
```
