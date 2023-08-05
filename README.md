<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.3 |
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | 4.11.0 |
| <a name="requirement_ovh"></a> [ovh](#requirement\_ovh) | 0.32.0 |
| <a name="requirement_uptimerobot"></a> [uptimerobot](#requirement\_uptimerobot) | 0.8.2 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ovh"></a> [ovh](#module\_ovh) | git@github.com:N0zz/infra-tfmod-ovh.git | main |
| <a name="module_uptimerobot"></a> [uptimerobot](#module\_uptimerobot) | git@github.com:N0zz/infra-tfmod-uptimerobot.git | main |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_custom_monitors"></a> [custom\_monitors](#input\_custom\_monitors) | n/a | `map(any)` | <pre>{<br>  "pop3_ssl0_ovh_net": {<br>    "name": "POP3 ssl0.ovh.net",<br>    "sub_type": "pop3",<br>    "type": "port",<br>    "url": "ssl0.ovh.net"<br>  },<br>  "ssh_kris_ovh": {<br>    "name": "SSH kris.ovh",<br>    "port": "22",<br>    "sub_type": "custom",<br>    "type": "port",<br>    "url": "kris.ovh"<br>  }<br>}</pre> | no |
| <a name="input_dns_records"></a> [dns\_records](#input\_dns\_records) | n/a | `map(any)` | <pre>{<br>  "asterisk_kris_ovh": {<br>    "fieldtype": "CNAME",<br>    "subdomain": "*",<br>    "target": "kris.ovh.",<br>    "ttl": "3600",<br>    "zone": "kris.ovh"<br>  },<br>  "kris_ovh": {<br>    "fieldtype": "A",<br>    "subdomain": "",<br>    "target": "130.61.139.21",<br>    "ttl": "3600",<br>    "zone": "kris.ovh"<br>  },<br>  "kris_ovh_caa": {<br>    "fieldtype": "CAA",<br>    "subdomain": "",<br>    "target": "letsencrypt.org",<br>    "ttl": "3600",<br>    "zone": "kris.ovh"<br>  },<br>  "temida_czestochowa_pl": {<br>    "fieldtype": "A",<br>    "subdomain": "",<br>    "target": "130.61.139.21",<br>    "ttl": "3600",<br>    "zone": "temida-czestochowa.pl"<br>  },<br>  "www_temida_czestochowa_pl": {<br>    "fieldtype": "CNAME",<br>    "subdomain": "www",<br>    "target": "temida-czestochowa.pl.",<br>    "ttl": "3600",<br>    "zone": "temida-czestochowa.pl"<br>  }<br>}</pre> | no |
| <a name="input_infra_environment"></a> [infra\_environment](#input\_infra\_environment) | n/a | `string` | `"prod"` | no |
| <a name="input_uptimerobot_alert_email"></a> [uptimerobot\_alert\_email](#input\_uptimerobot\_alert\_email) | n/a | `string` | `"k.kolodziejczyk3+prod@gmail.com"` | no |
<!-- END_TF_DOCS -->