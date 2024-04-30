output "public_ips" {
  value       = module.web_server.public_ips
  description = "List of public IP addresses for the instances."
}