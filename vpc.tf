
resource "google_compute_network" "gcn-1" {
  name = var.network_name
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "sub-us" {
  name = var.subnetwork_name
  network = google_compute_network.gcn-1.id
  region = var.region_name
  ip_cidr_range = var.cidr_range
}


resource "google_compute_firewall" "firewall-basic" {
  name    = "demo-firewall"
  network = google_compute_network.gcn-1.id
  direction = "INGRESS"

  allow {
    protocol = "tcp"
    ports = ["22"]
  }
  source_ranges = [google_compute_subnetwork.sub-us.ip_cidr_range]
}
