# terraform-awscli-docker

## How to build this image locally

Run the following command

```
$ docker build -t terraform-awscli-docker .
```

To tag for dockerhub

```
$ docker tag terraform-awscli-docker vcard/terraform-awscli-docker
```

To push to docker hub

```
$ export DOCKER_ID_USER="username"
$ docker login
$ docker push vcard/terraform-awscli-docker
```

## How to use this image

Run the following commands:

```
$ docker pull vcard/terraform-awscli-docker
```

Run the docker container in the background with the following command

```
$ docker run  -d -t --name terraform-awscli-docker vcard/terraform-awscli-docker
```

Ensure aws-cli, docker-ce and dotnetcore is installed

```
$ docker exec -it terraform-awscli-docker  ../bin/sh
```

Run the following commands:

```
$ dotnet --version
$ aws --version
$ docker --version
$ exit
```
