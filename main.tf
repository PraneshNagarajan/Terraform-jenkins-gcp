
resource "google_compute_address" "net_ip" {
  name = "vm-public-ip"
}

resource "google_compute_instance" "tf-vm-1" {
  name = "tf-vm-1"
  machine_type= "e2-medium"
  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2204-jammy-v20231010"
    }


  }
  network_interface {
    network = "default"
    access_config {
      nat_ip = google_compute_address.tf-vm-1-ip.address
    }
  }
}