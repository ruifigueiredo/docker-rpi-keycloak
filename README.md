# Keycloak for Raspberry Pi

[![dockeri.co](http://dockeri.co/image/ruifigueiredo/rpi-keycloak)](https://registry.hub.docker.com/u/ruifigueiredo/rpi-keycloak/)

This Docker image provides [Keycloak](http://keycloak.jboss.org/)

### Package included

- rpi-java8 from marhan
- keycloak 4.8.1 Final Standalone

### Build Details
- [Source Repository](https://github.com/ruifigueiredo/docker-rpi-keycloak)
- [Dockerfile](https://github.com/ruifigueiredo/docker-rpi-keycloak/blob/master/Dockerfile)
- [DockerHub] (https://registry.hub.docker.com/u/ruifigueiredo/rpi-keycloak/)


#### Build the Docker Image
```bash
make build
```

#### Push the Docker Image to the Docker Hub
* First use a `docker login` with username, password and email address
* Second push the Docker Image to the official Docker Hub

```bash
make push
```

### Run Details
```
docker run --name keycloak --privileged -d -p 8180:8080 -p 9990:9990 ruifigueiredo/rpi-keycloak
```

![Keycloak Welcome ScreeShot](https://raw.githubusercontent.com/ruifigueiredo/docker-rpi-keycloak/master/imagens/keycloak_welcomepage.png)

### Login

- Open http://ADDRESS:8180 in browser
- Login to Administration Console as 'admin:admin'

forked from marhan docker keycloak
