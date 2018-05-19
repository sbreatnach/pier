#!/bin/sh

docker login

docker build -t sbreatnach/hugo-netlify:1.0.0 ./hugo-netlify
docker build -t sbreatnach/hugo-netlify:latest ./hugo-netlify
docker push sbreatnach/hugo-netlify:1.0.0
docker push sbreatnach/hugo-netlify:latest