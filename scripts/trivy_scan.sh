#!/bin/bash

IMAGE=$1
mkdir -p scan-reports

OUTPUT="scan-reports/$(echo $IMAGE | sed 's/[:\/]/_/g').txt"

echo "🔍 Scanning image: $IMAGE"
trivy image --severity HIGH,CRITICAL --format table $IMAGE | tee "$OUTPUT"

echo "✔ Report stored: $OUTPUT"
