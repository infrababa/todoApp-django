#!/bin/bash
docker pull abudev22/my-app:latest
docker stop my-website || true
docker rm my-website || true
