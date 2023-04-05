variable "aws_region" {
  type    = string
  default = "ap-south-1"
}

variable "vpc_cidr" {
  type    = string
  default = "176.16.0.0/16"
}

variable "vpc_tag" {
  type = map(any)
  default = {
    "Name" = "TF-Example"
  }
}

#ami-id variable not required if we are importing ami-id using DATA source

/*variable "ami_id" {
  type    = string
  default = "ami-06e6b44dd2af20ed0"

}*/

variable "instance_name" {
  type = map(any)
  default = {
    "Name" = "PROD-SERVER"
  }

}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}



variable "nic_tag" {
  type = map(any)
  default = {
    "Name" = "ec2_nic"
  }

}
variable "private_ips" {
  type    = list(string)
  default = ["176.16.10.100"]

}

variable "sg_tags" {
  type = map(any)
  default = {
    "Name" = "my_security_groups"
  }
}


variable "subnet_cidr" {
  type    = string
  default = "176.16.10.0/24"
}

variable "subnet_tag" {
  type = map(any)
  default = {
    "Name" = "my_subnet"
  }
}
