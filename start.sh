#!/bin/bash

kubectl apply -f ./secrets.yml
kubectl apply -f ./app-env-configmap.yml
kubectl apply -f ./docker-network/traefik-rbac.yml
kubectl apply -f ./docker-network/traefik-service.yml
kubectl apply -f ./docker-app/docker-db-pv.yml
kubectl apply -f ./docker-app/docker-db-pvc.yml
kubectl apply -f ./docker-app/docker-db-config.yml
kubectl apply -f ./docker-app/docker-app-pv.yml
kubectl apply -f ./docker-app/docker-app-pvc.yml
kubectl apply -f ./docker-app/docker-app-config.yml
