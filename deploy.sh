#git add --chmod=+x .\deploy.sh

set -a
source ./env.env

echo "SERVICE_NAME=$SERVICE_NAME"

docker pull $DOCKER_IMAGE

mkdir -p ./data

chmod -R 777 ./data

echo "Deploy stack"
docker stack deploy -c ./stack.yml $SERVICE_NAME
