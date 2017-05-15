FROM alpine:latest

RUN apk update && apk add nmap && rm -rf /var/cache/apk/*

LABEL author="Chris Binnie"
LABEL purpose="Avoid having CMD with PID 1 with both ENTRYPOINT and then CMD as the separate target"

ENTRYPOINT ["/usr/bin/nmap", "-sT", "-p", "22", "--scanflags", "syn"]

## ENTRYPOINT ["nmap"]
