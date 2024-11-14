SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source "$SCRIPT_DIR/../../.env"

docker run -d \
    --name nats \
    --network nats \
    --ip 172.23.8.2 \
    -p 4222:4222  \
    -p 8222:8222  \
        nats:$DOCKER_IMAGE_NATS_TAG \
    --http_port 8222