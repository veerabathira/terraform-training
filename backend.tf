
terraform {
  backend "gcs" {
    prefix = "terraform"
    bucket = "terraform_state"
  }
}