#!/bin/bash

kubectl delete -f ./docker-app/docker-app-config.yml
kubectl delete -f ./docker-app/docker-app-pvc.yml
kubectl delete -f ./docker-app/docker-app-pv.yml
kubectl delete -f ./docker-app/docker-db-config.yml
kubectl delete -f ./docker-app/docker-db-pvc.yml
kubectl delete -f ./docker-app/docker-db-pv.yml
kubectl delete -f ./docker-network/traefik-service.yml
kubectl delete -f ./docker-network/traefik-rbac.yml
kubectl delete -f ./app-env-configmap.yml
kubectl delete -f ./secrets.yml
