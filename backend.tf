terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "lforlinux"

    workspaces {
      name = "terraform-network"
    }
  }
}
