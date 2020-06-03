#!/bin/bash

source "$(dirname "${BASH_SOURCE}")/init.sh"

for f in $CRD_FILES
do
    cp $f ./manifests/cluster-manager/
done

cp $CLUSTER_MANAGER_CRD_FILE ./deploy/cluster-manager/crds/
cp $KLUSTERLET_CRD_FILE ./deploy/klusterlet/crds/