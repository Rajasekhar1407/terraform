variable "ami_id" {
  type = string
  default = "ami-090252cbe067a9e58"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "instance_name" {
  type = list(string)
  default = ["db", "backend", "frontend"]
}

# variable "tags" {
#   type = map
#   default = {
#     Project = "Expence"
#     Environment = "Dev"
#     Name = "DB"
#   }
# }

variable "sg_name" {
    type = string
    default = "allow_ssh"
}

variable "sg_description" {
    type = string
    default = "allowing port no 22"
}

variable "ssh_port" {
    type = number
    default = "22"
}

variable "protocol" {
    type = string
    default = "tcp"
}

variable "allowed_cidr" {
    type = list(string)
    default = ["0.0.0.0/0"]
}

