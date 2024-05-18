resource "aws_instance" "data_source" {
    ami = data.aws_ami.ami_id.image_id
    instance_type = "t2.micro"
    tags = {
      Name = "data_source"
    }
}