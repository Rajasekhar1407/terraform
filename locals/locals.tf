locals {
  ami = "ami-090252cbe067a9e58"
  instance_type = var.instance_name == "db" ? "t3.micro" : "t2.micro" 
  tags = {
    Name = "locals_practice"
  }
}