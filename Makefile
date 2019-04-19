ROOT := github.com/liubog2008/helloworld

compile:
	docker run --rm                                                        \
		-v $(PWD):/go/src/$(ROOT)                                          \
	    -w /go/src/$(ROOT)                                                 \
	    -e GOOS=linux                                                      \
	    -e GOARCH=amd64                                                    \
	    -e GOPATH=/go                                                      \
	golang:1.12.4-alpine3.9                                                \
	    go build                                                           \
			-i                                                             \
			-v                                                             \
			-o ./_output/helloworld                                        \
	    ./main.go
