FROM alpine:3.9

ADD _output/helloworld /app/helloworld

ENTRYPOINT ["/app/helloworld"]
