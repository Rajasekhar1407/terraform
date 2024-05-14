resource "aws_instance" "practice" {
  
  ami = var.ami_id
  instance_type = var.instance_name == "db" ? "t2.small" : "t2.micro"
 # vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  tags = {
    name = "practice"
  }
}