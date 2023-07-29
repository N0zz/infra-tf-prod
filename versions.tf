terraform {
  required_version = ">= 1.5.4"

  required_providers {
    uptimerobot = {
      source = "vexxhost/uptimerobot"
      version = "0.8.2"
    }

    ovh = {
      source = "ovh/ovh"
      version = "0.32.0"
    }

    cloudflare = {
      source = "cloudflare/cloudflare"
      version = "4.11.0"
    }
  }
}
