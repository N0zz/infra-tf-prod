variable "environment" {
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
      ttl       = "300"
      target    = "130.61.139.21"
    },
    asterisk_kris_ovh = {
      zone      = "kris.ovh"
      subdomain = "*"
      fieldtype = "CNAME"
      ttl       = "300"
      target    = "kris.ovh"
    },
    temida_czestochowa_pl = {
      zone      = "temida-czestochowa.pl"
      subdomain = ""
      fieldtype = "A"
      ttl       = "300"
      target    = "130.61.139.21"
    },
    www_temida_czestochowa_pl = {
      zone      = "temida-czestochowa.pl"
      subdomain = "www"
      fieldtype = "A"
      ttl       = "300"
      target    = "130.61.139.21"
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