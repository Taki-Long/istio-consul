#!/bin/bash
docker-compose -f install/plantform.yml up -d
sleep 10s
docker-compose -f install/istio.yml up -d
sleep 5s
docker-compose -f services/details-v1.yml -f services/productpage-v1.yml -f services/reviews-v1.yml up -d