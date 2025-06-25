resource_group_name = "AKS"
location            = "canadacentral"
acr_name            = "projecttwoacr"
acr_sku             = "Standard"
acr_admin_enabled   = false

cluster_name       = "demoaks"
dns_prefix         = "demoaks-dns"
kubernetes_version = "1.31.1"

default_node_pool = {
  name                 = "sp"
  vm_size              = "Standard_DS2_v2"
  enable_auto_scaling  = true
  min_count            = 1
  max_count            = 2
  max_pods             = 110
  os_disk_size_gb      = 30
  zones                = ["2"]
  orchestrator_version = "1.30.0"
}
network_profile = {
  network_plugin      = "azure"
  network_policy      = "calico"
  load_balancer_sku   = "standard"
  network_plugin_mode = "overlay"
}
identity_type            = "SystemAssigned"
enable_workload_identity = true
enable_oidc              = true
enable_azure_policy      = false

tags                            = {}
vnet_name                       = "aks-vnet"
vnet_address_space              = ["10.0.0.0/16"]
aks_subnet_name                 = "aks-subnet"
aks_subnet_address_prefix       = ["10.0.1.0/24"]
endpoints_subnet_name           = "endpoints-subnet"
endpoints_subnet_address_prefix = ["10.0.2.0/24"]
system_node_pool = {
  name                = "systemnp"
  node_count          = 1
  vm_size             = "Standard_D2als_v6"
  os_disk_size_gb     = 30
  max_pods            = 110
  enable_auto_scaling = true
  min_count           = 1
  zones                = ["2"]
  max_count           = 3
}
user_node_pool = {
  name                = "usernp"
  vm_size             = "Standard_D2als_v6"
  node_count          = 1
  os_disk_size_gb     = 30
  max_pods            = 110
  enable_auto_scaling = true
  min_count           = 1
  zones                = ["2"]
  max_count           = 3
}
service_cidr   = "10.240.0.0/16"
dns_service_ip = "10.240.0.10"
subscription_id = "76f3c62f-e8ff-4cba-8eb2-11e11a9c35e5"
terraform_principal_id = "51c66ada-c054-486a-b6ee-e82e8db511c3"
