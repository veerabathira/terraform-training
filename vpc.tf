
resource "google_compute_network" "gcn-1" {
  name = "first-network"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "sub-us" {
  name = "sub-us"
  network = google_compute_network.gcn-1.self_link
  ip_cidr_range = "172.110.10.0/24"
  region = "us-east1"
}

resource "google_compute_firewall" "firewall-basic" {
  name    = "demo-firewall"
  network = google_compute_network.gcn-1.id
  direction = "EGRESS"

  allow {
    protocol = "tcp"
    ports = ["22", "80"]
  }

}