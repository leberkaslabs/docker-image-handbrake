# Handbrake

[![Container Release (handbrake)](https://github.com/leberkaslabs/docker-image-handbrake/actions/workflows/build-push-action.yml/badge.svg)](https://github.com/leberkaslabs/docker-image-handbrake/actions/workflows/build-push-action.yml)

This repository is designed to build Docker images for [handbrake](https://handbrake.fr/).

```bash
docker pull dudecalledbro/handbrake:latest
```

## Usage

With this Docker image, HandBrake can be easily used to encode `*.mkv` files. This is particularly useful if you are using a dedicated encoding server or want to use HandBrake without a local installation. The image can be run via Docker Compose, for example. To do this, simply copy all videos to be processed into the `data` directory. The container can then be started, which automatically begins the encoding process.

```bash
# Start Docker Container
docker compose up --detach

# View Docker Container Logs
docker compose logs --follow
```

## Build

This image build is scheduled with GitHub Actions and will be pushed to DockerHub. The image will also be rebuilt, if the `main` branch is updated. If you need to build the image locally, ensure [Docker](https://docs.docker.com/engine/installation/) is installed and execute the following:

```bash
docker build -t handbrake:latest .
```

## License

Copyright © 2025 Niclas Spreng

Licensed under the [MIT license](LICENSE).
