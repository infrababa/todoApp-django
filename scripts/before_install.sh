#!/bin/bash
docker pull abudev22/todo-api:latest
docker stop my-website || true
docker rm my-website || true
