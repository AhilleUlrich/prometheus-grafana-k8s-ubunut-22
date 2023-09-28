#!/bin/bash

echo "---------------------------------------------------------------"
echo "                     GET HELM REPOSITORY INFO                  "
echo "---------------------------------------------------------------"
echo " "

helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update

echo "---------------------------------------------------------------"
echo "                     INSTALL HELM CHART                        "
echo "---------------------------------------------------------------"
echo " "

kubectl create ns prometheus
helm install prometheus prometheus-community/kube-prometheus-stack

echo "---------------------------------------------------------------"
echo "                GRAFANA AND PROMETHEUS INSTALLED               "
echo "---------------------------------------------------------------"
echo " "

echo "Grafana and Prometheus are installed in prometheus namespace"
echo "to see more information : https://artifacthub.io/packages/helm/prometheus-community/kube-prometheus-stack"

