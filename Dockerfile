FROM alpine:3.6 as alpine

RUN apk add -U --no-cache ca-certificates

FROM scratch
ENTRYPOINT []
WORKDIR /
COPY --from=alpine /etc/ssl/certs/ca-bundle.crt /etc/ssl/certs/
