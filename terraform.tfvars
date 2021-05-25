vm_gamma = {
    master_node = {
        vm_name = "Server.master-one",
        vm_target_node = "gamma",
        vm_id = 401,
        vm_clone = "Cloud-Init-gamma",
        vm_cores = 4,
        vm_memory = 8192,
        vm_disk_size = "64G",
        vm_ip = "10.0.20.1",
        vm_ci_user = "adminSeb",
        vm_ssh_keys_pub = "$SSH_KEY"
    }
}
