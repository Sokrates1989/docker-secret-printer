#  docker-secret-printer
Get a swarm secret to check if it is working correctly

# Push image to dockerhub

```bash
docker image ls sokrates1989/secret-printer
```

```bash
docker build -t secret-printer .
docker tag secret-printer sokrates1989/secret-printer:latest
docker tag secret-printer sokrates1989/secret-printer:major.minor.patch
docker login
docker push sokrates1989/secret-printer:latest
docker push sokrates1989/secret-printer:major.minor.patch
docker image ls sokrates1989/secret-printer
git status

```

## Debug images

### Create

```bash
docker build -t secret-printer .
docker tag secret-printer sokrates1989/secret-printer:DEBUGmajor.minor.patch
docker login
docker push sokrates1989/secret-printer:DEBUGmajor.minor.patch
docker image ls sokrates1989/secret-printer
git status

```
### Cleanup / Delete
```bash
docker rmi sokrates1989/secret-printer:DEBUGmajor.minor.patch
```