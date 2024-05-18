resource "aws_instance" "expense" {
  for_each = var.instance_names
  ami = data.aws_ami.ami_id.id
  vpc_security_group_ids = [ "sg-00d789fc47c70a4a0" ]
  instance_type = each.value
  tags = merge(
    var.common_tags,
    {
        Name = each.key
        Module = each.key
    }
  )
}