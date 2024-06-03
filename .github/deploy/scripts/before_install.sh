#!/bin/bash
docker pull ${{ secrets.DOCKER_HUB_USERNAME }}/devops:latest
docker stop my-website || true
docker rm my-website || true
