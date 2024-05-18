variable "tags" {
  type = map
  default = {
    Name = "remote-state"
    Terraform = true
  }
}