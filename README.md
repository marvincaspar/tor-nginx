[![Publish Docker image](https://github.com/marvincaspar/tor-nginx/actions/workflows/docker-image.yml/badge.svg)](https://github.com/marvincaspar/tor-nginx/actions/workflows/docker-image.yml)
![Docker Pulls](https://img.shields.io/docker/pulls/marvincaspar/tor-nginx)
![Docker Image Size (tag)](https://img.shields.io/docker/image-size/marvincaspar/tor-nginx/latest)

# Tor Nginx

This is a small docker image which starts a tor and nginx service. This might be the easiest way to deploy your first site on the dark web.

## Usage

You just need to run `docker-compose up -d` and the nginx and tor services will start. 
This will also create a `hidden_service` directory. 
In there you find a `hostanme` file, which cointains your `.onion` domain. 
Copy and open the domain in your tor browser and you will see your hosted site `Hello from the dark web :)`.

This container can run everywhere, even on a raspberry pi at home.

![Host hidden service](./docs/host-hidden-service.gif)