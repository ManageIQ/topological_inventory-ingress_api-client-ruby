# TopologicalInventoryIngressApiClient::Inventory

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | [optional] 
**schema** | [**Schema**](Schema.md) |  | 
**source** | **String** |  | 
**source_type** | **String** |  | [optional] 
**refresh_state_uuid** | **String** |  | [optional] 
**refresh_state_part_uuid** | **String** |  | [optional] 
**total_parts** | **Integer** |  | [optional] 
**refresh_state_part_collected_at** | **DateTime** |  | [optional] 
**refresh_state_part_sent_at** | **DateTime** |  | [optional] 
**refresh_state_started_at** | **DateTime** |  | [optional] 
**refresh_state_sent_at** | **DateTime** |  | [optional] 
**ingress_api_sent_at** | **DateTime** |  | [optional] 
**refresh_type** | **String** |  | [optional] 
**sweep_scope** | [**OneOfobjectarray**](OneOfobjectarray.md) |  | [optional] 
**collections** | [**Array&lt;AnyOfInventoryCollectionClusterInventoryCollectionContainerInventoryCollectionContainerGroupInventoryCollectionContainerImageInventoryCollectionContainerNodeInventoryCollectionContainerProjectInventoryCollectionContainerResourceQuotaInventoryCollectionContainerTemplateInventoryCollectionDatastoreInventoryCollectionFlavorInventoryCollectionIpaddressInventoryCollectionHostInventoryCollectionNetworkAdapterInventoryCollectionNetworkInventoryCollectionOrchestrationStackInventoryCollectionReservationInventoryCollectionServiceInstanceInventoryCollectionServiceInstanceNodeInventoryCollectionServiceInventoryInventoryCollectionSecurityGroupInventoryCollectionServiceOfferingIconInventoryCollectionServiceOfferingInventoryCollectionServiceOfferingNodeInventoryCollectionServiceCredentialInventoryCollectionServiceCredentialTypeInventoryCollectionServicePlanInventoryCollectionSourceRegionInventoryCollectionSubnetInventoryCollectionSubscriptionInventoryCollectionVmInventoryCollectionVolumeInventoryCollectionVolumeTypeInventoryCollectionServiceOfferingServiceCredentialInventoryCollectionServiceInstanceServiceCredentialInventoryCollectionServiceOfferingNodeServiceCredentialInventoryCollectionServiceInstanceNodeServiceCredentialInventoryCollectionClusterTagInventoryCollectionContainerGroupTagInventoryCollectionContainerImageTagInventoryCollectionContainerNodeTagInventoryCollectionContainerProjectTagInventoryCollectionContainerTemplateTagInventoryCollectionDatastoreTagInventoryCollectionIpaddressTagInventoryCollectionHostTagInventoryCollectionNetworkAdapterTagInventoryCollectionNetworkTagInventoryCollectionReservationTagInventoryCollectionSecurityGroupTagInventoryCollectionServiceInventoryTagInventoryCollectionServiceOfferingTagInventoryCollectionSubnetTagInventoryCollectionVmTagInventoryCollectionTagInventoryCollectionDatastoreMountInventoryCollectionVolumeAttachmentInventoryCollectionVmSecurityGroupInventoryCollectionServiceInstanceTask&gt;**](AnyOfInventoryCollectionClusterInventoryCollectionContainerInventoryCollectionContainerGroupInventoryCollectionContainerImageInventoryCollectionContainerNodeInventoryCollectionContainerProjectInventoryCollectionContainerResourceQuotaInventoryCollectionContainerTemplateInventoryCollectionDatastoreInventoryCollectionFlavorInventoryCollectionIpaddressInventoryCollectionHostInventoryCollectionNetworkAdapterInventoryCollectionNetworkInventoryCollectionOrchestrationStackInventoryCollectionReservationInventoryCollectionServiceInstanceInventoryCollectionServiceInstanceNodeInventoryCollectionServiceInventoryInventoryCollectionSecurityGroupInventoryCollectionServiceOfferingIconInventoryCollectionServiceOfferingInventoryCollectionServiceOfferingNodeInventoryCollectionServiceCredentialInventoryCollectionServiceCredentialTypeInventoryCollectionServicePlanInventoryCollectionSourceRegionInventoryCollectionSubnetInventoryCollectionSubscriptionInventoryCollectionVmInventoryCollectionVolumeInventoryCollectionVolumeTypeInventoryCollectionServiceOfferingServiceCredentialInventoryCollectionServiceInstanceServiceCredentialInventoryCollectionServiceOfferingNodeServiceCredentialInventoryCollectionServiceInstanceNodeServiceCredentialInventoryCollectionClusterTagInventoryCollectionContainerGroupTagInventoryCollectionContainerImageTagInventoryCollectionContainerNodeTagInventoryCollectionContainerProjectTagInventoryCollectionContainerTemplateTagInventoryCollectionDatastoreTagInventoryCollectionIpaddressTagInventoryCollectionHostTagInventoryCollectionNetworkAdapterTagInventoryCollectionNetworkTagInventoryCollectionReservationTagInventoryCollectionSecurityGroupTagInventoryCollectionServiceInventoryTagInventoryCollectionServiceOfferingTagInventoryCollectionSubnetTagInventoryCollectionVmTagInventoryCollectionTagInventoryCollectionDatastoreMountInventoryCollectionVolumeAttachmentInventoryCollectionVmSecurityGroupInventoryCollectionServiceInstanceTask.md) |  | [optional] 

## Code Sample

```ruby
require 'TopologicalInventoryIngressApiClient'

instance = TopologicalInventoryIngressApiClient::Inventory.new(name: null,
                                 schema: null,
                                 source: null,
                                 source_type: null,
                                 refresh_state_uuid: null,
                                 refresh_state_part_uuid: null,
                                 total_parts: null,
                                 refresh_state_part_collected_at: null,
                                 refresh_state_part_sent_at: null,
                                 refresh_state_started_at: null,
                                 refresh_state_sent_at: null,
                                 ingress_api_sent_at: null,
                                 refresh_type: null,
                                 sweep_scope: null,
                                 collections: null)
```


