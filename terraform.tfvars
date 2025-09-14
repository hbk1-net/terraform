proxmox_node = "procyon"
containers = {
  blackhole = {
    vmid         = 121
    hostname     = "blackhole.stellar.tky.hybs.home"
    unprivileged = true
    lxc_template = "local:vztmpl/almalinux-9-default_20240911_amd64.tar.xz"
    storage      = "data"
    ipaddress    = "10.0.1.250/24"
    gateway      = "10.0.1.254"
    nameserver   = "10.0.1.85,10.0.1.86"
    memory       = 1024
    cores        = 1
  }
}
