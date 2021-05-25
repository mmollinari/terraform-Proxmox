provider "proxmox" {
    pm_tls_insecure = true
    pm_api_url = "https://213.32.12.238:8006/api2/json"
    pm_password = "sebastien12"
    pm_user = "adminSeb"
}

module "gamma_install_vm" {
    source = "./modules/vm_install"
    
    for_each =  var.vm_gamma
    vm_name = each.value["vm_name"]
    vm_target_node = each.value["vm_target_node"]
    vm_id = each.value["vm_id"]
    vm_clone = each.value["vm_clone"]
    vm_cores = each.value["vm_cores"]
    vm_memory = each.value["vm_memory"]
    vm_disk_size = each.value["vm_disk_size"]
    vm_ip = each.value["vm_ip"]
    vm_ci_user = each.value["vm_ci_user"]
    vm_ssh_keys_pub = each.value["vm_ssh_keys_pub"]
}
