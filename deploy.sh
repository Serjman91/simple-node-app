docker stop `docker ps | grep "/bin/sh" | awk '{print $1}'`
docker rm `docker ps | grep "/bin/sh" | awk '{print $1}'`
echo $(aws ecr get-authorization-token --region eu-central-1 --output text --query 'authorizationData[].authorizationToken' | base64 -d | cut -d: -f2) | docker login -u AWS https://083365510130.dkr.ecr.eu-central-1.amazonaws.com --password-stdin
docker pull 083365510130.dkr.ecr.eu-central-1.amazonaws.com/simple-node-app:latest
docker run -d -p 80:5000 083365510130.dkr.ecr.eu-central-1.amazonaws.com/simple-node-app:latest

#docker-compose up