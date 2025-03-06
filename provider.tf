terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.24.0"
    }
  }
}

provider "google" {
  project = "poc-ad-target-env-413614"
  region = "northamerica-northeast1"
  zone = "northamerica-northeast1-a"
}