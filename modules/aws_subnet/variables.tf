variable "subnet_cidr" {
  type = string
  default = "171.16.10.0/24"
}

variable "subnet_tag" {
    type = map(any)
    default = {
      "Name" = "my_subnet"
    }
}

variable "vpc_id" {
  type = string
  
}