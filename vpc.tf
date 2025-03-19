
resource "google_compute_network" "gcn-1" {
  name = "first-network"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "sub-us" {
  name = "first-sub"
  network = google_compute_network.gcn-1.id
  region = "us-east1"
  ip_cidr_range = "172.10.10.0/24"
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
