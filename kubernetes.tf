resource "google_container_cluster" "energy" {
    name               = "${var.cluster_name}"
    zone               = "europe-north1-a"
    initial_node_count = "${var.initial_node_count}"
    additional_zones = [
        "europe-north1-b",
        "europe-north1-c",
    ]
    master_auth {
        username = "${var.cluster_admin_username}"
        password = "${var.cluster_admin_password}}"
    }
    node_config {
        oauth_scopes = [
          "https://www.googleapis.com/auth/compute",
          "https://www.googleapis.com/auth/devstorage.read_only",
          "https://www.googleapis.com/auth/logging.write",
          "https://www.googleapis.com/auth/monitoring",
        ]
        labels {
            this-is-for = "dev-cluster"
        }
        tags = ["dev", "work"]
    }
}
