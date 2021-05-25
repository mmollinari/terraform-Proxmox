variable "vm_name" {
    type = string
}

variable "vm_description" {
    type = string
    default = "Description"
}

variable "vm_id" {
    type = number
}

variable "vm_target_node" {
    type = string
}

variable "vm_clone" {
    type = string
}

variable "vm_cores" {
    type = number
}

variable "vm_memory" {
    type = number
}

variable "vm_disk_size" {
    type = string
}

variable "vm_ip" {
    type = string
}

variable "vm_ci_user" {
    type = string
}

variable "vm_ssh_keys_pub" {
    type = string
}