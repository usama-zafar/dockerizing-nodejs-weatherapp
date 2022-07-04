Usage Instructions:

- Run the following command to download the repo:
wget https://github.com/usama-zafar/dockerizing-nodejs-weatherapp/archive/refs/heads/master.zip

- Change directory to the dockerizing-nodejs-weatherapp
cd dockerizing-nodejs-weatherapp

- Create the docker image in the directory:
docker image build -t mynodejs/practice:v1 .

- Create a container based off the newly created image:
docker container run -d --name test-app -p 8081:3000 mynodejs/practice:v1

- Verify whether the container is running:
docker container ls

- Test the accessibility of the container
curl localhost:8081

- You can also directly curl the container's Private IP and Port:
 docker container inspect test-app | grep IP
 curl 172.17.0.3:3000

