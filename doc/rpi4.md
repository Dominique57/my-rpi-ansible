# Rpi 4

## Setup

- Install debian 12+ based arm-64bit image (raspbian is ok)
  - setup user {dominique} with sudoer access
  - setup ssh
    - /!\ PasswordAuthentication might be disabled, enable it for initial setup
- Install docker using their apt for system-level updates
  - https://docs.docker.com/engine/install/debian/#install-using-the-repository

## Goal

The goal of the device is to host and run home-assistant using docker-compose,
so that other services can be run on the device. To safely expose homeassistant
to the internet we will also add a wireguard vpn setup