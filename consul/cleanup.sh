#!/bin/bash
SCRIPTDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# only ask if in interactive mode
if [[ -t 0 ]];then
  echo -n "namespace ? [default] "
  read -r NAMESPACE
fi

if [[ -z ${NAMESPACE} ]];then
  NAMESPACE=default
fi

echo "using NAMESPACE=${NAMESPACE}"

protos=( destinationrules virtualservices gateways )
for proto in "${protos[@]}"; do
  for resource in $(kubectl get -n ${NAMESPACE} "$proto" -o name); do
    kubectl delete -n ${NAMESPACE} "$resource";
  done
done
docker-compose -f services/details-v1.yml \
-f services/productpage-v1.yml \
-f services/reviews-v1.yml \
-f services/reviews-v2.yml \
-f services/reviews-v3.yml \
-f services/ratings-v1.yml down
docker-compose -f install/istio.yml -f install/plantform.yml down