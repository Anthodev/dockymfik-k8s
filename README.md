# dockymfik-k8s

## Description
This is the k8s version of my development stack on Docker.

The stack is preconfigure to run an `app` container using an image including PHP 7.3, composer, node/npm.

A container running a database (MySQL) is also launched, linked to the `app` container.

## Setup
Rename `app-env-configmap.yml.dist` into `app-env-configmap.yml` for common data you want to share as environment variable to the container

Rename `secrets.yml.dist` into `secrets.yml` and put in there the sensitive data you want to share as environment variable to the container

Change the path in `./docker-app/docker-app-pv.yml` with the full path to the `app` folder in the `docker-app` folder (and note the trick for the WSL users)

Change the path in `./docker-app/docker-db-pv.yml` with the full path to the `data` folder in the `docker-app` folder (and note the trick for the WSL users)

## Prerequisites
Make sure you have Kubernetes and kubectl running on your machine.

## Usage
Just use the command `sh start.sh` to launch the stack and `sh stop.sh` to stop it.

The application should be accessible on your browser at the address `https://app.docker.localhost` (by default)
