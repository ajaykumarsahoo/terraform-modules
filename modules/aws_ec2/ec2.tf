#EC2 Instance 

data "aws_ami" "amazon-linux-2" {
 most_recent = true


 filter {
   name   = "owner-alias"
   values = ["amazon"]
 }


 filter {
   name   = "name"
   #values = ["amzn2-ami-hvm*"]
   values = ["amzn2-ami-hvm-*-x86_64-gp2"]
 }
}

resource "aws_instance" "my_ec2" {
  ami           = data.aws_ami.amazon-linux-2.id
  instance_type = var.instance_type

  tags = var.instance_name

}

#We can use below configuration if we used hardcoded ami-id 
/*
resource "aws_instance" "my_ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = var.instance_name

}*/