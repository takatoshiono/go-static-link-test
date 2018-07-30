package main

import (
	"fmt"
	"os"

	"github.com/takatoshiono/go-static-link-test/pkg/mynet"
)

func main() {
	fmt.Println("hello world.")

	addrs, err := mynet.LookupHost("golang.org")
	if err != nil {
		fmt.Printf("failed to lookup: %v\n", err)
		os.Exit(1)
	}

	fmt.Printf("addresses of golang.org: %v\n", addrs)
}
