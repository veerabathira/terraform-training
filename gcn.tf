# resource "google_compute_network" "gcn-1" {
#   name = "first-network"
#   auto_create_subnetworks = false
# }

# resource "google_compute_subnetwork" "sub-us" {
#   name = "sub-us"
#   network = google_compute_network.gcn-1.id
#   ip_cidr_range = "10.1.0.0/24"
#   region = "us-east1"
# }