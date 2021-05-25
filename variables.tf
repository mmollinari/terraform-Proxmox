variable "vm_gamma" {
    type = map(object({
        vm_name = string,
        vm_target_node = string,
        vm_id = number,
        vm_clone = string,
        vm_cores = number,
        vm_memory = number,
        vm_disk_size = string,
        vm_ip = string,
        vm_ci_user = string,
        vm_ssh_keys_pub = string
    })) 
}
