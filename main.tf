resource "proxmox_lxc" "container" {
  for_each     = var.containers
  vmid         = each.value.vmid
  unprivileged = each.value.unprivileged

  hostname    = each.value.hostname
  target_node = var.proxmox_node
  ostemplate  = each.value.lxc_template
  password    = var.container_password
  cores       = each.value.cores
  memory      = each.value.memory

  rootfs {
    storage = each.value.storage
    size    = "16G"
  }

  network {
    name   = "eth0"
    bridge = "vmbr0"
    ip     = each.value.ipaddress
    gw     = each.value.gateway
  }

  nameserver = each.value.nameserver

  features {
    nesting = true
  }

  start = true
}