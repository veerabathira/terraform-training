resource "google_compute_instance" "gce_1" {
    name = var.gce_name
    machine_type = var.machine_type
    zone = var.zone_name
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
  