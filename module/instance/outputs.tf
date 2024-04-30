output "public_ips" {
  value = [for instance in aws_instance.Tailor-Server : instance.public_ip]
  description = "List of public IP addresses for the web servers."
}

