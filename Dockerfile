FROM ubuntu:18.04

# specify version
MAINTAINER Daniel Haehn version: 0.1

# move files from outside to container to the inside
# ADD source destination
ADD converter.cc converter_in_docker.cc

RUN apt-get update
RUN apt-get install -y g++
RUN g++ -o converter converter_in_docker.cc

ENTRYPOINT ["./converter"]
