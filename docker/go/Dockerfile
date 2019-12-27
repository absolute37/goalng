FROM golang:1.13.5

RUN go get github.com/oxequa/realize

RUN go clean -modcache

COPY . /go/src/nonameapi

WORKDIR /go/src/nonameapi

RUN mkdir -p /go/src/nonameapi

COPY entrypoint.sh /root/

RUN chmod +x /root/entrypoint.sh

# EXPOSE 80~

# ENTRYPOINT  realize start --path="/go/src/nonameapi/" --name="no_name-api" --run 


