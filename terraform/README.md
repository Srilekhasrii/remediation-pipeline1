# Terraform Cloud Configuration Guide

This folder contains instructions for configuring Terraform Cloud with your
GitHub Auto-Remediation workflow.

## 1. Terraform Cloud Requirements
- A Terraform Cloud organization
- A Workspace (Execution mode: Remote)
- Workspace ID:
    ws-bXE1FijLn2qRyHtJ
## 2. Required Variables in Terraform Cloud
Add these as Workspace Variables:

### Environment Variables
- AWS_ACCESS_KEY_ID
- AWS_SECRET_ACCESS_KEY
- AWS_DEFAULT_REGION = us-east-1

### Terraform Variables
Any TF_VAR_* values needed for your project.

## 3. API Token
In Terraform Cloud:
User Settings → Tokens → Create Token

Store it in GitHub Secrets as:
TFC_TOKEN

## 4. GitHub Workflow Integration
Your workflow:
- Uploads Terraform config
- Triggers automatic run
- Uses the workspace ID listed above

## 5. Notes
This folder is optional and used only for documentation.
The actual Terraform files may be stored elsewhere depending on your repo structure.

