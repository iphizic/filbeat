#!/bin/bash

export TAG="iphizic/filebeat:latest"

docker build -t $TAG ./
echo "Built: $TAG"
