FROM gcr.io/jenkinsxio/builder-nodejs10x:latest

RUN groupadd docker && \
    usermod -a -G docker `id -ng` && \
    curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose