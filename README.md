# docker-base

- Base image: alpine/git:latest

## Git action Variables

- NAME: Image name (required)
- IMAGE: Base image（默认: alpine/git:latest）
- MAINTAINER: Maintainer (required)
- PORT: Default port（default: 8080）
- BUILD_CMD: Bash syntax commands used when building; Replace $ with \$ when using variable（optional）
- STARTUP_CMD: Startup syntax commands used when building; Replace $ with \$ when using variable（optional）

## Git action Secrets

- DOCKER_USERNAME: docker hub username
- DOCKER_PASSWORD: docker hub access token

## 

```sh
    # 一般启动
    docker run -ti -d xxx/yyy
    # 指定cmd
    docker run -ti -d xxx/yyy -c "echo 123"
```


