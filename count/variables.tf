variable "ami_id" {
    type = string
    default = "ami-0220d79f3f480ecf5"

  
}

variable "instance_type" {
    type = string
    default = "t3.micro"
  
}


variable "sg_name" {
    type = string
    default = "allow_tls_terraform"
  
}

variable "instances" {
    type = list
    default = ["mongodb", "catalogue", "frontend"]
  
}