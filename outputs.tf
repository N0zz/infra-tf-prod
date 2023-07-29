output "dns_records" {
    value = module.ovh.dns_records
}
output "alert_contact" {
    value = module.uptimerobot.alert_contact
}
output "https_monitors" {
    value = module.uptimerobot.https_monitors
}
output "custom_monitors" {
    value = module.uptimerobot.custom_monitors
}
output "status_page" {
    value = module.uptimerobot.status_page
}
