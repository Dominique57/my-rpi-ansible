# Rpi 2b

## Setup

- Install debian 12+ based arm-32bit image (raspbian is ok)
  - setup user {dominique} with sudoer access
  - setup ssh
    - /!\ PasswordAuthentication might be disabled, enable it for initial setup
- Install docker using their apt for system-level updates
  - https://docs.docker.com/engine/install/raspberry-pi-os/#install-using-the-repository

## Goal

The goal of the device is to host and run web services. The device will receive
all connections on a traefik reverse proxy and redirect them to docker services.