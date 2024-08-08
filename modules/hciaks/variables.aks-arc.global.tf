
variable "aksArc0-kubernetesVersion" {
  type        = string
  description = "The version of Kubernetes to use for the provisioned cluster."
  default     = "1.28.5"
}

variable "aksArc0-controlPlaneCount" {
  type        = number
  description = "The number of control plane nodes for the Kubernetes cluster."
  default     = 1
}

variable "aksArc0-controlPlaneVmSize" {
  type        = string
  description = "The size of the Virtual Machines to use for the control plane nodes."
  default     = "Standard_A4_v2"
}

variable "aksArc0-agentPoolProfiles" {
  type = list(object({
    count             = number
    enableAutoScaling = optional(bool)
    nodeTaints        = optional(list(string))
    nodeLabels        = optional(map(string))
    maxPods           = optional(number)
    name              = optional(string)
    osSKU             = optional(string, "CBLMariner")
    osType            = optional(string, "Linux")
    vmSize            = optional(string, "Standard_A4_v2")
  }))
  description = "The agent pool profiles for the Kubernetes cluster."
  default = [{
    count  = 1
    name   = "nodepool1"
    osSKU  = "CBLMariner"
    osType = "Linux"
    vmSize = "Standard_A4_v2"
  }]
}

variable "aksArc0-enableAzureRBAC" {
  type        = bool
  description = "Whether to enable Azure RBAC for the Kubernetes cluster."
  default     = true
}

variable "aksArc0-rbacAdminGroupObjectIds" {
  type        = list(string)
  description = "The object id of the Azure AD group that will be assigned the 'cluster-admin' role in the Kubernetes cluster."
  default     = ["ed888f99-66c1-48fe-992f-030f49ba50ed"]
}

variable "aksArc0-sshPublicKey" {
  type        = string
  description = "The SSH public key that will be used to access the kubernetes cluster nodes. If not specified, a new SSH key pair will be generated."
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCy6RP4+djZ4dWQZeCID5fV/Wwlr0ax2snzGY31H9CbW5+Y5XmR3/C2a6kgBKVZGF3JMhmyQ6jq+pQw5GWRbhqhQ+WB4MH8/PJcSifaGbBGKjwLWXAHCQW0X7AuCUy2GaiYrHQyIaHvcSRILZzHhqmPXsL1OmG2Sn2RtqXKU/lZKxmCIADBMXpUPDffIR14FYCEzv5Lg33BO7xvTJ8SxnYoxvCAEJXwYqjkGIdC15UxhY9DgVcrA4Er/ZE98afEZNRT7L82oLenDKJXW4qMVjWge702MTiaMoRq3vSivxofCywYNIDS/obJda9etbGssn1I4fKlSzrmXvpD0nvM80UTlpS/CSvV7cou3V3hORFSK5cHt0eNFeUviIHiX6xQDmSlljmYJtjetytW9cqMspIEIvCq4DxlVat+4n/z4zk8m7ipt1Xf8dJ8AbDCJA9+rJgp7wH/XKU9V/SHSipRrEbYfHPKJCYVsaneT83o5wBJ/LX3lhLASEJNP4bowhjE69QjRIhdw4IkE5ldcvtVSn4ocOHu8WugQR4Bwalt3hnEFXSz/JBt735ge8ObBAbdZSuuRfixuEA7UYA9Prqg2a23LtuR5x3utEcfMQYtde7Qtk5k6wnM9qgJ2y1XID6hpLZ5JjHrqvH2bVVillcXeNIbWznX4bMUgugDdeMvxTPHsQ==\n"
}
