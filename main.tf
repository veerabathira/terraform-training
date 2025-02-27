provider "google" {
  project = "poc-ad-target-env-413614"
  region  = "us-central1"
}

resource "google_storage_bucket" "test-bucket" {
  name     = "your-unique-bucket-name"
  location = "US"

  storage_class = "STANDARD"

  versioning {
    enabled = true
  }
}
