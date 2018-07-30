package mynet

import "net"

func LookupHost(host string) (addrs []string, err error) {
	return net.LookupHost(host)
}
