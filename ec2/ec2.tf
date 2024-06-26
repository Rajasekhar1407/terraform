resource "aws_instance" "practice" {
  
  ami = "ami-090252cbe067a9e58"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  tags = {
    name = "practice"
  }
}

resource "aws_security_group" "allow_ssh" {
  name = "allow_ssh"
  description = "allowing ssh"

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    }

    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    }

    tags = {
      name = "allow-ssh"
      created-by = "Rajasekhar"
    }
}
