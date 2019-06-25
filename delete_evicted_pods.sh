#!/bin/bash
kubectl -n k8s get pods | awk '{if ($3 ~ /Evicted/) system ("kubectl -n k8s delete pods " $1)}'
