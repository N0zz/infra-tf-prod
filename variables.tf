variable "uptimerobot_alert_email" {
    type = string
    default = "k.kolodziejczyk3+prod@gmail.com"
}
variable "dns_records" {
    type = map
    default = {
        test_kris_ovh = {
            zone      = "kris.ovh"
            subdomain = ""
            fieldtype = "A"
            ttl       = "300"
            target    = "130.61.139.21"
        }
    }
}

variable "custom_monitors" {
    type = map

    default = {
        ssh_kris_ovh = {
            url           = "kris.ovh"
            name          = "SSH kris.ovh"
            type          = "port"
            sub_type      = "custom"
            port          = "22"
        }
    }
}
