// Key Vault

param tenantID string = subscription().tenantId
param keyVaultName string
param location string = resourceGroup().location
param keyVaultURL string

resource key_vault 'Microsoft.KeyVault/vaults@2023-02-01' = {
  name: keyVaultName
  location: location
  properties: {
    sku: {
      family: 'A'
      name: 'standard'
    }
    tenantId: tenantID
    accessPolicies: []

    enabledForDeployment: false
    enabledForDiskEncryption: false
    enabledForTemplateDeployment: true
    enableRbacAuthorization: true
    enableSoftDelete: true
    softDeleteRetentionInDays: 90
    provisioningState: 'Succeeded'
    publicNetworkAccess: 'Enabled'
    vaultUri: keyVaultURL
  }
}
