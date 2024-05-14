output "public_ip" {
  value = aws_instance.practice.public_dns
}

output "host_name" {
  value = aws_instance.practice.host_id
}