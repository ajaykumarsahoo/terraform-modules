variable "vpc_cidr" {
    type = string
    default = "172.16.0.0/16"
}

variable "vpc_tag" {
  type = map(any)
  default = {
    "Name" = "TF-Example"
  }
}

