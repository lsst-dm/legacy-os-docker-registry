DIR=$(cd "$(dirname "$0")"; pwd -P)

REGISTRY_FILE="$DIR/registry-config.yml"

docker run -d --restart=always -p 5000:5000 --name registry-mirror \
    -v /etc/docker/registry-config.yml:$REGISTRY_FILE -e STANDALONE=false \
    -e MIRROR_SOURCE=https://registry-1.docker.io \
    -e MIRROR_SOURCE_INDEX=https://index.docker.io \
    registry:2
