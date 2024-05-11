# resource "aws_instance" "practice" {
#     ami = "ami-090252cbe067a9e58"
#     instance_type = "t2.micro"
#     vpc_security_group_ids  = ["sg-00d789fc47c70a4a0"]
#     tags = {
#       Name = "practice"
#       created-by = "Rajasekhar"
#     }
#  }