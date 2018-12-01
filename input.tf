variable "cluster_name" {
    description = "Name of the k8s cluster"
    default = "energy"
}

variable "initial_node_count" {
    description = "initial node count for the k8s cluster"
}

variable "cluster_admin_username" {
    description = "Admin user for the cluster"
}

variable "cluster_admin_password" {
    description = "Admin password for the cluster"
}
