resource "aws_instance" "provisioner" {
  ami = data.aws_ami.ami_id.image_id
  vpc_security_group_ids = [data.aws_security_group.sg_name.id]
  instance_type = "t2.micro"

    provisioner "local-exec" {
        command = "echo ${self.private_ip} >> private_ips.txt"
    }

    connection {
        type     = "ssh"
        user     = "ec2-user"
        password = "DevOps321"
        host     = self.public_ip
    }
 
  provisioner "remote-exec" {
    inline = [
      "sudo dnf install ansible -y",
      "sudo dnf install nginx -y",
      "sudo systemctl start nginx"
    ]
  }
}