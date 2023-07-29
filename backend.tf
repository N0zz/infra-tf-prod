terraform {
  cloud {
    hostname = "app.terraform.io"
    organization = "n0zz"

    workspaces {
      name = "infra-tf-prod"
    }
  }
}