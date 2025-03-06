terraform {
  backend "gcs" {
    prefix = "terraform"
    google_storage_bucket = "terraform_state"
  }
}