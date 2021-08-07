#https://www.terraform.io/docs/language/settings/backends/s3.html
terraform {
  backend "s3" {
    bucket = "sl-terra-data"
    key    = "terra-state"
    region = "us-east-1"
  }
}