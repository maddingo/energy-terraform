output "gcp_ssh_command" {
    value = "ssh ${var.cluster_admin_username}@${google_container_cluster.energy.endpoint}"
}
