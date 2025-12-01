#!/bin/bash

IMAGE=$1
ECR=$2

echo "🚀 Starting remediation..."

NEW_TAG="safe-$(date +%s)"

# create secure Dockerfile
cat <<EOF > Dockerfile.secure
FROM $IMAGE
RUN apt-get update && apt-get upgrade -y && apt-get clean
EOF

docker build -t safe-image:$NEW_TAG -f Dockerfile.secure .

aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin $ECR

docker tag safe-image:$NEW_TAG $ECR:$NEW_TAG
docker push $ECR:$NEW_TAG

echo "✔ Remediated image pushed: $ECR:$NEW_TAG"
