# ec2 variables
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

variable "common_tags" {
  type = map
  default = {
    Project = "Expence"
    Environment = "Dev"
    Terraform = "true"
  }
}

# sg variables
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

# r53 variables
variable "domain_name" {
  type = string
  default = "rajasekhar.online"
}

variable "zone_id" {
  type = string
  default = "Z01627301Z39HWUL6TIUX"
}