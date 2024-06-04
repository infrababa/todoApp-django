#!/bin/bash
docker pull abudev22/devops-app:latest
docker stop my-app || true
docker rm my-app || true