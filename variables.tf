variable "api_url" {
  description = "Proxmox API URL"
  type        = string
}

variable "api_token_id" {
  description = "Proxmox API Token id, eg: user@realm!token"
  type        = string
}

variable "api_token_secret" {
  description = "Proxmox API Token secret"
  type        = string
  sensitive   = true
}

variable "container_password" {
  description = "Container root password"
  type        = string
  sensitive   = true
}

variable "proxmox_node" {
  description = "Target node to create lxc"
  type        = string
}

# コンテナ間で異なる値を持つ変数のみ map にまとめる
variable "containers" {
  description = "LXC containers to deploy"
  type = map(object({
    vmid         = number
    unprivileged = bool
    hostname     = string
    lxc_template = string
    storage      = string
    ipaddress    = string
    gateway      = string
    nameserver   = string
    memory       = number
    cores        = number
  }))
}


