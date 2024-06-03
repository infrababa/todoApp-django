#!/bin/bash
docker pull ${{ secrets.DOCKER_HUB_USERNAME }}/todo-api:latest
docker stop my-website || true
docker rm my-website || true
