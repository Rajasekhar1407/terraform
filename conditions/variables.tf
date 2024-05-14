variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "instance_name" {
  type = string
  default = "backend"
}

variable "ami_id" {
  type = string
  default = "ami-090252cbe067a9e58"
}