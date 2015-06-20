Simple docker/bind image
========================

Simple bind image based on ubuntu:trusty

You must import the /etc/bind/ directory from the host and redirect port 53 (udp/tcp).

`docker run --name bind-master -v /srv/bind-master/bind/:/etc/bind/ -d -p 53:53/udp -p 53:53 loobaz/bind`

Image available on DockerHub: https://registry.hub.docker.com/u/loobaz/bind/
