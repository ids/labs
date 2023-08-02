#! /env/sh

docker build . -t idstudios/labs

docker tag idstudios/labs:latest idstudios/labs:latest
docker push idstudios/labs:latest
