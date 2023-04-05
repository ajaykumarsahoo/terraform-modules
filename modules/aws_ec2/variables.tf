
#We can use below variable, if we used hardcoded ami-id

/*variable "ami_id" {
    type = string
    default = "ami-06e6b44dd2af20ed0"
  
} */

variable "instance_name" {
    type = map(any)
    default = {
      "Name" = "PROD-SERVER"
    }
  
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}


