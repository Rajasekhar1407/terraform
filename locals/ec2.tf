resource "aws_instance" "practice" {
  
  ami = local.ami
  instance_type = local.instance_type
 # vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  tags = local.tags
}