#!/usr/bin/env bash

set -o errexit # exit immediately if a command exits with a non-zero status.
set -o nounset # exit when script tries to use undeclared variables

readonly RED='\033[0;31m'
readonly NC='\033[0m' # No Color

function checkAssets() {
        echo "Checking addons"
        helm lint ./addons/marketing-mock-2-0.1.0/chart/marketing-mock-2/ --values ./addons/marketing-mock-2-0.1.0/plans/default/values.yaml
        helm lint ./addons/commerce-mock-2-0.1.0/chart/commerce-mock-2/ --values ./addons/commerce-mock-2-0.1.0/plans/default/values.yaml
        helm lint ./addons/c4c-mock-2-0.1.0/chart/c4c-mock-2/ --values ./addons/c4c-mock-2-0.1.0/plans/default/values.yaml
       
        echo "Processing done"
}

checkAssets
