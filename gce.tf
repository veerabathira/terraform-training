resource "google_compute_instance" "gce_1" {
    name = "Apache-server"
    machine_type = "n1-standard-1"
    zone = "us-east1-b"
    metadata_startup_script = "yum install httpd -y; systemctl enable httpd; systemctl start httpd"
    allow_stopping_for_update = true

    boot_disk {
      initialize_params {
        image = "rocky-linux-8-optimized-gcp-arm64-v20250212"
        size  = "10"
      }
    }

    network_interface {
      network    = "first-network"
      subnetwork = "sub-us"
      access_config {}
    }
}
  