#!/bin/bash
docker-compose -f services/details-v1.yml -f services/productpage-v1.yml -f services/reviews-v1.yml  down
docker-compose -f install/istio.yml -f install/plantform.yml down