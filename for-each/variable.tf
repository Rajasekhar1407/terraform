variable "instance_names" {
  type = map 
  default = {
    db = "t3.micro"
    backend = "t2.micro"
    frontend = "t2.micro"
  }
}

variable "common_tags" {
  type = map 
  default = {
    Project = "expense"
    Environment = "Dev"
    Terraform = true
  }
}

variable "domain_name" {
    type = string
    default = "rajasekhar.online"
}