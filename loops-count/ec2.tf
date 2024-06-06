resource "aws_instance" "DB" {
  #count = 3
  count = length(var.instance_name)
  ami = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  tags = {
    Name = var.instance_name[count.index]
  }
}

resource "aws_security_group" "allow_ssh" {
  name = var.sg_name
  description = var.sg_description

  ingress {
    from_port        = var.ssh_port
    to_port          = var.ssh_port
    protocol         = var.protocol
    cidr_blocks      = var.allowed_cidr
    }

    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = var.allowed_cidr
    }

    tags = {
      name = "allow-ssh"
      created-by = "Rajasekhar"
    }
}
