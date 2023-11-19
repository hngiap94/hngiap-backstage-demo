# How to deploy

## Deploy Infrastructure

Update repository secrets: **AWS_ACCESS_KEY_ID** and **AWS_SECRET_ACCESS_KEY** if changed

Run **Deploy Infrastructure** workflow

Get the terraform output

## Build Backstage Image

Update repository variable: **AWS_ECR_REPOSITORY**, **APP_DOMAIN** and **BUCKET_NAME** (get from terraform output of step above)

Run **Build Backstage Image** workflow

## Deploy Newer Image

Rerun **Deploy Infrastructure** workflow

# Destroy Infrastructure

Run **Destroy Infrastructure** workflow