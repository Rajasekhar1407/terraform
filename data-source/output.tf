output "image_id" {
  value = aws_instance.data_source.id
}

# output "vpc_id" {
#   value = 
# }

output "zone_id" {
  value = data.aws_route53_zone.zone_id.zone_id
}

output "sg_name" {
  value = data.aws_security_group.sg_name.id
}