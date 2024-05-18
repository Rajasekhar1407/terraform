resource "aws_instance" "remote-state" {
  ami = data.aws_ami.ami_id.id
  instance_type = "t2.micro"
  vpc_security_group_ids = [ "sg-00d789fc47c70a4a0" ]
  tags = var.tags
}