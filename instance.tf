resource "google_compute_instance" "vm_instance" {
  name         = "terraform-instance"
  machine_type = "f1-micro"

  metadata {
    sshKeys = "martin:${file("~/.ssh/id_rsa.pub")}"
  }

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-1810"
    }
  }

  network_interface {
    network       = "${google_compute_network.vpc_network.self_link}"
    access_config = {
    }
  }
}

resource "google_compute_firewall" "vpc-firewall" {
  name    = "vpc-firewall"
  network = "${google_compute_network.vpc_network.name}"

  # allow {
  #   protocol = "icmp"
  # }
  #
  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
}

resource "google_compute_network" "vpc_network" {
    name = "terraform-network"
    auto_create_subnetworks = "true"
}
