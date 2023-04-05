variable "sg_tags" {
    type = map(any)
    default = {
      "Name" = "my-sg"
    }
}

variable "vpc_id" {
    type = string
  
}

