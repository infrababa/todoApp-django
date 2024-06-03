#!/bin/bash
docker run -d --name my-website -p 8000:8000 ${{ secrets.DOCKER_HUB_USERNAME }}/todo-api:latest


