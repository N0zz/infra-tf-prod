variable "infra_environment" {
  type    = string
  default = "prod"
}
variable "uptimerobot_alert_email" {
  type    = string
  default = "k.kolodziejczyk3+prod@gmail.com"
}
variable "dns_records" {
  type = map(any)
  default = {
    kris_ovh = {
      zone      = "kris.ovh"
      subdomain = ""
      fieldtype = "A"
      ttl       = "3600"
      target    = "130.61.139.21"
    },
    asterisk_kris_ovh = {
      zone      = "kris.ovh"
      subdomain = "*"
      fieldtype = "CNAME"
      ttl       = "3600"
      target    = "kris.ovh."
    },
    # Provider doesn't seem to support CAA records format?
    # │ Error: Failed to create OVH Record: OVHcloud API error (status code 400): "Invalid CAA target. Required format is: flags tag \"value\""
    # kris_ovh_caa = {
    #   zone      = "kris.ovh"
    #   subdomain = ""
    #   fieldtype = "CAA"
    #   ttl       = "3600"
    #   target    = "letsencrypt.org"
    # },
    temida_czestochowa_pl = {
      zone      = "temida-czestochowa.pl"
      subdomain = ""
      fieldtype = "A"
      ttl       = "3600"
      target    = "130.61.139.21"
    },
    www_temida_czestochowa_pl = {
      zone      = "temida-czestochowa.pl"
      subdomain = "www"
      fieldtype = "CNAME"
      ttl       = "3600"
      target    = "temida-czestochowa.pl."
    }
  }
}

variable "custom_monitors" {
  type = map(any)

  default = {
    ssh_kris_ovh = {
      url      = "kris.ovh"
      name     = "SSH kris.ovh"
      type     = "port"
      sub_type = "custom"
      port     = "22"
    },
    pop3_ssl0_ovh_net = {
      url      = "ssl0.ovh.net"
      name     = "POP3 ssl0.ovh.net"
      type     = "port"
      sub_type = "pop3"
    }
  }
}