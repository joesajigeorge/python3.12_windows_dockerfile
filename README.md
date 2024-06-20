# Python3.12 Windows core 2022 Dockerfile

Create a Windows Docker container with Python3.12 installed.

## Locally:

### Build the image

```sh
$ docker build -t winpycontainer:v1 -f Dockerfile .
```
The Docker file contains commands to install Python3.12 and echo Hello. You can update the entrypoint command according to your need.

### Run the container

```sh
$ docker run -itd winpycontainer:v1
```
This command will run the container in detached mode. 

## CICD

### GitHub Actions

Fork the repository. You can find the actions script in the following location.
```sh
.github/workflows/docker-image.yml
```
Go to Settings -> Secrets and Variables -> Actions -> Repository Secrets to add the DockerHub credentials as secrets. Add DOCKER_USERNAME and DOCKER_PASSWORD.  
Then go to actions to see the action.  

