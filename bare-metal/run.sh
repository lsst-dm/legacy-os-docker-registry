DIR=$(cd "$(dirname "$0")"; pwd -P)

REGISTRY_FILE="$DIR/registry-config.yml"

NON_AFS_REGISTRY_FILE="/tmp/registry-config.yml"

cp "$REGISTRY_FILE" "$NON_AFS_REGISTRY_FILE"

docker run -d --restart=always -p 5000:5000 --name registry-mirror \
    -v $NON_AFS_REGISTRY_FILE:/etc/docker/registry/config.yml -e STANDALONE=false \
    -e MIRROR_SOURCE=https://registry-1.docker.io \
    -e MIRROR_SOURCE_INDEX=https://index.docker.io \
    registry:2
