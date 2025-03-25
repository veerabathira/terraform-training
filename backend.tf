
terraform {
  backend "gcs" {
    prefix = "terraform"
    bucket = "my-terraform-bucket-2025"
  }
}