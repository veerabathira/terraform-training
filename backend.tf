
terraform {
  backend "gcs" {
    prefix = "terraform"
    bucket = "terraform_trining_state"
  }
}