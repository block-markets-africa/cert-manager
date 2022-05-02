go mod tidy
make vendor-go
make release

TAG=v1.8.0-53-geb76f331ad6810 #run `docker images` and look for the tag for "cert-manager-controller-amd6"
docker tag cert-manager-controller-amd64:$TAG kschriek/cert-manager-controller:$TAG
docker push kschriek/cert-manager-controller:$TAG

