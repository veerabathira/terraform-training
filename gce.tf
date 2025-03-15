resource "google_compute_instance" "gce_1" {
    name = "apache-server"
    machine_type = "n1-standard-1"
    zone = "us-east1-b"
    metadata_startup_script = "yum install httpd -y; systemctl enable httpd; systemctl start httpd"
    allow_stopping_for_update = true

    boot_disk {
      initialize_params {
        image = "rocky-linux-8-optimized-gcp-arm64-v20250212"
        size  = "20"
      }
    }

    network_interface {
      network = google_compute_network.gcn-1.id
      subnetwork = google_compute_subnetwork.sub-us.id
    }
    depends_on = [google_compute_subnetwork.sub-us]
}
  