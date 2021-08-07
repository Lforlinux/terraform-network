terraform {
  backend "s3" {
    bucket = "sl-terraform-remote-state"
    key    = "simplilearn-terrafom-state"
    region = "us-east-1"
  }
}

