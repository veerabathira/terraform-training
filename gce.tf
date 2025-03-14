resource "google_compute_instance" "gce_1" {
    name = "first-demo"
    machine_type = "n1-standard-1"
    zone = "us-east1-b"
    metadata_startup_script = ""

    boot_disk {
      initialize_params {
        image = "rocky-linux-8-optimized-gcp-arm64-v20250212"
        size = "20"
      }
    }

    network_interface {
      network = "first-network"
      subnetwork = "sub-us"
      network_ip = "172.10.10.11"
    }
    }
  