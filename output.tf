output "ip" {
    value = "${google_compute_instance.vm_instance.network_interface.0.access_config.0.nat_ip}"
}

output "gcp_ssh_command" {
    value = "ssh ${var.cluster_admin_username}@${google_container_cluster.energy.endpoint}"
}
