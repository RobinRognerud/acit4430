#!/bin/bash
# Script for setting up standard prometheus monitoring on a kubernetes cluster

git clone https://github.com/bibinwilson/kubernetes-prometheus
kubectl create namespace monitoring
cd kubernetes-prometheus
kubectl create -f clusterRole.yaml
kubectl create -f config-map.yaml
kubectl create  -f prometheus-deployment.yaml
kubectl create -f prometheus-service.yaml --namespace=monitoring
