#!/bin/bash

echo "🚀 Triggering Terraform Cloud Run..."

curl -X POST \
  -H "Authorization: Bearer $TFC_TOKEN" \
  -H "Content-Type: application/vnd.api+json" \
  -d '{
        "data": {
          "attributes": { "message": "Auto-remediation run" },
          "type": "runs",
          "relationships": {
            "workspace": {
              "data": { "type": "workspaces", "id": "'"$TFC_WORKSPACE_ID"'" }
            }
          }
        }
      }' \
  https://app.terraform.io/api/v2/runs
