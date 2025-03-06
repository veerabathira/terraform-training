terraform {
  backend "state_file" {
    prefix = "terraform"
    google_storage_bucket = "terraform_state"
  }
}