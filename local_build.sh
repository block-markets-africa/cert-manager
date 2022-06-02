go mod tidy
make vendor-go
make release

TAG=$(git describe --abbrev=14)
docker tag cert-manager-controller-amd64:$TAG ghcr.io/block-markets-africa/cert-manager-controller:$TAG
docker push ghcr.io/block-markets-africa/cert-manager-controller:$TAG
