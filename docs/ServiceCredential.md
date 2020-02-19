# TopologicalInventoryIngressApiClient::ServiceCredential

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**archived_at** | **DateTime** |  | [optional] 
**description** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**resource_timestamp** | **DateTime** |  | [optional] 
**service_credential_type** | [**ServiceCredentialTypeReference**](ServiceCredentialTypeReference.md) |  | [optional] 
**source_created_at** | **DateTime** |  | [optional] 
**source_ref** | **String** |  | 
**source_updated_at** | **DateTime** |  | [optional] 
**type_name** | **String** |  | [optional] 

## Code Sample

```ruby
require 'TopologicalInventoryIngressApiClient'

instance = TopologicalInventoryIngressApiClient::ServiceCredential.new(archived_at: null,
                                 description: null,
                                 name: null,
                                 resource_timestamp: null,
                                 service_credential_type: null,
                                 source_created_at: null,
                                 source_ref: null,
                                 source_updated_at: null,
                                 type_name: null)
```


