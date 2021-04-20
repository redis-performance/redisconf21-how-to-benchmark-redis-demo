output "database_public_ip" {
  value = ["${aws_instance.server[0].public_ip}"]
}

output "database_private_ip" {
  value = ["${aws_instance.server[0].private_ip}"]
}

output "client_public_ip" {
  value = ["${aws_instance.client[0].public_ip}"]
}

output "client_private_ip" {
  value = ["${aws_instance.client[0].private_ip}"]
}

output "grafana_server_public_ip" {
  value = ["${aws_instance.grafana_server[0].public_ip}"]
}
