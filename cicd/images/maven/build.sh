IMAGE=$(cat Dockerfile| head -1 | sed -e 's/#//')
docker build -t $IMAGE .
docker push $IMAGE
