param storageName string  = 'triggerStorage${uniqueString(resourceGroup().id)}'
param location string = resourceGroup().location

resource storageaccount 'Microsoft.Storage/storageAccounts@2023-05-01' = {
  name: storageName
  location: location
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
  properties: { 
    accessTier: 'Cool'
  }
}
