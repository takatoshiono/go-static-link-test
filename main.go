package main

import (
	"fmt"
	"net"
	"os"
)

func main() {
	fmt.Println("hello world.")

	addrs, err := net.LookupHost("golang.org")
	if err != nil {
		fmt.Printf("failed to lookup: %v\n", err)
		os.Exit(1)
	}

	fmt.Printf("addresses of golang.org: %v\n", addrs)
}
