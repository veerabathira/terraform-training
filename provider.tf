terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.24.0"
    }
  }
}
provider "google" {
  project = var.project_name
  region = var.region_name
  zone = var.zone_name
}