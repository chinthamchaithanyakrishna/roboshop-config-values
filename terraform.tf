provider "vault" {
  address = "http://vault-internal.chaithanya.online:8200"
  token = var.token
}

terraform {
  backend "s3" {
    bucket = "terraform-b85"
    key    = "rovoshop-config-values/terraform.tfstate"
    region = "us-east-1"
  }
}