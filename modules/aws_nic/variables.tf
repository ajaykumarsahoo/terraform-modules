variable "subnet_id" {
    type = string

}

variable "ec2_id" {
    type = string
  
}

variable "nic_tag" {
    type = map(any)
    default = {
      "Name" = "ec2_nic"
    }
  
}
variable "private_ips" {
    type = list(string)
    default = ["172.16.10.100"]
  
}

