resource "proxmox_vm_qemu" "cloudinit" {
    name            = var.vm_name
    desc            = var.vm_description

    vmid            = var.vm_id

    #Wait time
    #additional_wait = 60
    ci_wait         = 60

    # Node name has to be the same name as within the cluster
    # this might not include the FQDN
    target_node     = var.vm_target_node

    # The template name to clone this vm from
    clone           = var.vm_clone
    full_clone      = true

    # Activate QEMU agent for this VM
    agent           = 1

    os_type         = "cloud-init"
    cores           = var.vm_cores
    sockets         = 1
    vcpus           = 0
    cpu             = "kvm64"
    memory          = var.vm_memory
    scsihw          = "virtio-scsi-pci"

    # Setup the disk
    disk {
        size        = var.vm_disk_size
        type        = "scsi"
        storage     = "local-lvm"
        iothread    = false
    }

    # Setup the network interface and assign a vlan tag: 256
    network {
        model       = "virtio"
        bridge      = "vmbr0"
        tag         = -1
        firewall    = true
    }
}