#!/bin/bash

cd /go/src/nonameapi/

echo "✅  Go mod tidy"
go mod tidy
echo "✅  Install dependency minor or patch"
go get -u github.com/oxequa/realize
echo "✅  Start service ..."

# exec realize start --run 
# exec go run main.go
exec realize start --run