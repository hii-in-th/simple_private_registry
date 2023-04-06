#git add --chmod=+x .\deploy.sh

mkdir -p ./data

chmod -R 777 ./data

echo "Deploy stack"
docker stack deploy -c ./stack.yml simple_private_registry
