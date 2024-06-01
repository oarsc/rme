#!/bin/sh

# Prevent running as root
if [ "$(id -u)" -eq 0 ]; then
  echo "This script should not be executed as root."
  exit 1
fi

IMAGE_NAME="rmei:latest"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

if docker images --format '{{.Repository}}:{{.Tag}}' | grep -q "^${IMAGE_NAME}$"; then
  echo " [ ◆ ] Image \"$IMAGE_NAME\" exists."
else
  echo " [ ◆ ] Creating image \"$IMAGE_NAME\"..."
  docker build -t "$IMAGE_NAME" "$SCRIPT_DIR"
fi

echo " [ ◆ ] Creating and running container..."
docker run -v $SCRIPT_DIR:/rme --rm $IMAGE_NAME
