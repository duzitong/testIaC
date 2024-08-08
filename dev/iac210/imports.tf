
import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac210-rg"
  to = module.base.azurerm_resource_group.rg
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac210-rg/providers/Microsoft.AzureStackHCI/clusters/iac210-cl?api-version=2023-08-01-preview"
  to = module.base.module.hci0.azapi_resource.cluster
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac210-rg/providers/Microsoft.AzureStackHCI/clusters/iac210-cl/deploymentSettings/default?api-version=2023-08-01-preview"
  to = module.base.module.hci0.azapi_resource.validatedeploymentsetting_seperate[0]
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac210-rg/providers/Microsoft.Storage/storageAccounts/iac210wit14"
  to = module.base.module.hci0.azurerm_storage_account.witness
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac210-rg/providers/Microsoft.KeyVault/vaults/iac210-kv-14"
  to = module.base.module.hci0.azurerm_key_vault.DeploymentKeyVault
}

import {
  id = "14,10,99"
  to = module.base.module.hci0.random_integer.random_suffix
}

import {
  id = "https://iac210-kv-14.vault.azure.net/secrets/AzureStackLCMUserCredential/6691a08278cc4f2093e7a237a4e6fc02"
  to = module.base.module.hci0.azurerm_key_vault_secret.AzureStackLCMUserCredential
}

import {
  id = "https://iac210-kv-14.vault.azure.net/secrets/LocalAdminCredential/60f774d7ed38476abe8e99b905c28c0e"
  to = module.base.module.hci0.azurerm_key_vault_secret.LocalAdminCredential
}

import {
  id = "https://iac210-kv-14.vault.azure.net/secrets/DefaultARBApplication/f8f9e4b4d45a43f5a09aa25608b07f24"
  to = module.base.module.hci0.azurerm_key_vault_secret.DefaultARBApplication
}

import {
  id = "https://iac210-kv-14.vault.azure.net/secrets/WitnessStorageKey/cb47c7da7792463dbf0af4e6b4781415"
  to = module.base.module.hci0.azurerm_key_vault_secret.WitnessStorageKey
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac210-rg/providers/Microsoft.Authorization/roleAssignments/e5189017-d5f2-c1a8-3441-9c1f79b79b12"
  to = module.base.module.hci0.azurerm_role_assignment.ServicePrincipalRoleAssign["ACMRM"]
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac210-rg/providers/Microsoft.Authorization/roleAssignments/e891e2bd-74a1-6d35-b7f4-af94a222c97c"
  to = module.base.module.hci0.module.serverRoleBindings["AzSHOST2"].azurerm_role_assignment.MachineRoleAssign["KVSU"]
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac210-rg/providers/Microsoft.Authorization/roleAssignments/058fed67-b5d3-2635-3e79-2e81bc4f6f0b"
  to = module.base.module.hci0.module.serverRoleBindings["AzSHOST2"].azurerm_role_assignment.MachineRoleAssign["ASHDMR"]
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac210-rg/providers/Microsoft.Authorization/roleAssignments/6f656d26-a580-78e0-718c-d881dec1f508"
  to = module.base.module.hci0.module.serverRoleBindings["AzSHOST2"].azurerm_role_assignment.MachineRoleAssign["Reader"]
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac210-rg/providers/Microsoft.Authorization/roleAssignments/8333d213-236d-d3ba-7bbb-7617b8dbb39e"
  to = module.base.module.hci0.module.serverRoleBindings["AzSHOST1"].azurerm_role_assignment.MachineRoleAssign["KVSU"]
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac210-rg/providers/Microsoft.Authorization/roleAssignments/8806efb7-ecae-8688-5371-28206f734e1a"
  to = module.base.module.hci0.module.serverRoleBindings["AzSHOST1"].azurerm_role_assignment.MachineRoleAssign["ACMRM"]
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac210-rg/providers/Microsoft.Authorization/roleAssignments/745fb93e-2dd8-6734-2ec6-edea57d2d845"
  to = module.base.module.hci0.module.serverRoleBindings["AzSHOST1"].azurerm_role_assignment.MachineRoleAssign["Reader"]
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac210-rg/providers/Microsoft.Authorization/roleAssignments/64a67f6a-2e86-350c-82ee-461a4e3e183f"
  to = module.base.module.hci0.module.serverRoleBindings["AzSHOST2"].azurerm_role_assignment.MachineRoleAssign["ACMRM"]
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac210-rg/providers/Microsoft.Authorization/roleAssignments/6ccc1ef7-bfec-3b36-7193-85c838ed6144"
  to = module.base.module.hci0.module.serverRoleBindings["AzSHOST1"].azurerm_role_assignment.MachineRoleAssign["ASHDMR"]
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac210-rg/providers/Microsoft.HybridCompute/machines/AzSHOST1/providers/Microsoft.Insights/dataCollectionRuleAssociations/DCRA_cd1b0ea4ebdee803911271bc9fe9e925"
  to = module.base.module.hci0-extensions.module.insights[0].azurerm_monitor_data_collection_rule_association.association["AzSHOST1"]
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac210-rg/providers/Microsoft.HybridCompute/machines/AzSHOST2/providers/Microsoft.Insights/dataCollectionRuleAssociations/DCRA_2460d9a51ab3ee4e5c81bb3e2ee0f554"
  to = module.base.module.hci0-extensions.module.insights[0].azurerm_monitor_data_collection_rule_association.association["AzSHOST2"]
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac210-rg/providers/Microsoft.Insights/dataCollectionRules/AzureStackHCI-iac210-dcr"
  to = module.base.module.hci0-extensions.module.insights[0].azurerm_monitor_data_collection_rule.dcr
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac210-rg/providers/Microsoft.Insights/dataCollectionEndpoints/iac210-dce"
  to = module.base.module.hci0-extensions.module.insights[0].azurerm_monitor_data_collection_endpoint.dce
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac210-rg/providers/Microsoft.OperationalInsights/workspaces/iac210-workspace"
  to = module.base.module.hci0-extensions.module.insights[0].azurerm_log_analytics_workspace.workspace
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac210-rg/providers/Microsoft.AzureStackHCI/clusters/iac210-cl/ArcSettings/default/Extensions/AzureMonitorWindowsAgent?api-version=2023-08-01"
  to = module.base.module.hci0-extensions.module.insights[0].azapi_resource.monitor_agent
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac210-rg/providers/Microsoft.AzureStackHCI/clusters/iac210-cl/ArcSettings/default/Extensions/AzureEdgeAlerts?api-version=2023-08-01"
  to = module.base.module.hci0-extensions.azapi_resource.alerts[0]
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac210-rg/providers/Microsoft.AzureStackHCI/logicalNetworks/iac210-logicalnetwork?api-version=2023-09-01-preview"
  to = module.base.module.hci0-logical-network0.azapi_resource.logicalNetwork
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac210-rg/providers/Microsoft.Kubernetes/connectedClusters/iac210-aksArc?api-version=2024-01-01"
  to = module.base.module.hci0-aksarc0.azapi_resource.connectedCluster
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iac210-rg/providers/Microsoft.Kubernetes/connectedClusters/iac210-aksArc/providers/Microsoft.HybridContainerService/provisionedClusterInstances/default"
  to = module.base.module.hci0-aksarc0.azapi_resource.provisionedClusterInstance
}
