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
+ tree /go
/go
|-- bin
`-- src
    |-- app
    |   |-- build-and-check-file.sh
    |   `-- main.go
    `-- github.com
        `-- takatoshiono
            `-- go-static-link-test
                `-- pkg
                    `-- mynet
                        `-- mynet.go

8 directories, 3 files
+ go build -i main.go
+ file main
main: ELF 64-bit LSB executable, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, not stripped
+ ls -l main
-rwxr-xr-x 1 root root 2908921 Jul 30 04:46 main
+ tree /go/pkg
/go/pkg
`-- linux_amd64
    `-- github.com
        `-- takatoshiono
            `-- go-static-link-test
                `-- pkg
                    `-- mynet.a

5 directories, 1 file
+ go build -i -a -tags netgo -installsuffix netgo main.go
+ file main
main: ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, not stripped
+ ls -l main
-rwxr-xr-x 1 root root 2853905 Jul 30 04:46 main
+ tree /go/pkg
/go/pkg
|-- linux_amd64
|   `-- github.com
|       `-- takatoshiono
|           `-- go-static-link-test
|               `-- pkg
|                   `-- mynet.a
`-- linux_amd64_netgo
    `-- github.com
        `-- takatoshiono
            `-- go-static-link-test
                `-- pkg
                    `-- mynet.a

10 directories, 2 files
+ go build -i -ldflags -extldflags "-static" main.go
+ file main
main: ELF 64-bit LSB executable, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, not stripped
+ ls -l main
-rwxr-xr-x 1 root root 2908921 Jul 30 04:46 main
+ CGO_ENABLED=0 go build main.go
+ file main
main: ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, not stripped
+ ls -l main
-rwxr-xr-x 1 root root 2853905 Jul 30 04:46 main
```
