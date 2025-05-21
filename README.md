# Web-app-project1

This repository demonstrates a full Azure DevOps pipeline using GitHub Actions to:

- Deploy Azure infrastructure with Bicep (App Service Plan + Web App)
- Deploy a static website to Azure App Service

### Resources

- Resource Group: `rg01`
- App Service Plan: `app-plan`
- Web App Name: `bkamenov-app`
- Location: `westeurope`

### How it works

- Push to `main` branch triggers the pipeline.
- The pipeline deploys infrastructure and then publishes the website.
