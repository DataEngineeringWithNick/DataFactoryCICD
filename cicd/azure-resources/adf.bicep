// Data Factory

param dataFactoryName string
param location string = resourceGroup().location

resource data_factory 'Microsoft.DataFactory/factories@2018-06-01' = {
  name: dataFactoryName
  location: location
  identity: {
    type: 'SystemAssigned'
  }
  properties: {}
}
