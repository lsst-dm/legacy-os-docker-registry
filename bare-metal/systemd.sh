set -e
set -x

DIR=$(cd "$(dirname "$0")"; pwd -P)

cp $DIR/registry-config.yml /etc/docker
cp $DIR/registry.service /etc/systemd/system/
/bin/systemctl daemon-reload
