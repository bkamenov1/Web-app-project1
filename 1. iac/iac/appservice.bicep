param location string = resourceGroup().location
param webAppName string

resource appServicePlan 'Microsoft.Web/serverfarms@2022-03-01' = {
  name: 'app-plan'
  location: location
  sku: {
    name: 'F1'   // Free tier for demo
    tier: 'Free'
  }
  kind: 'linux'
  properties: {
    reserved: true
  }
}

resource webApp 'Microsoft.Web/sites@2022-03-01' = {
  name: webAppName
  location: location
  kind: 'app,linux'
  properties: {
    serverFarmId: appServicePlan.id
    siteConfig: {
      linuxFxVersion: 'NODE|18-lts'
    }
    httpsOnly: true
  }
}
