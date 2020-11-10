package main

import (
	"go.etcd.io/etcd/clientv3"
)

func main() {
	cli, err := clientv3.New(clientv3.Config{
		Endpoints:   []string{"localhost:2379", "localhost:22379", "localhost:32379"},
			DialTimeout: 5 * time.Second,
	})
	if err != nil {
		// handle error!
		panic(err)
	}
	defer cli.Close()
}
