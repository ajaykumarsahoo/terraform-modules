module "aws_vpc" {
  source   = "./modules/awc_vpc"
  vpc_cidr = var.vpc_cidr
  vpc_tag  = var.vpc_tag

}

module "aws_subnet" {
  source      = "./modules/aws_subnet"
  vpc_id      = module.aws_vpc.vpc_id
  subnet_cidr = var.subnet_cidr
  subnet_tag  = var.subnet_tag

}

module "aws_sg" {
  source  = "./modules/aws_sg"
  vpc_id  = module.aws_vpc.vpc_id
  sg_tags = var.sg_tags
  
}

#No need to declare ami-id ,as we are fetching the ami using DATA source.
module "aws_ec2" {
  source        = "./modules/aws_ec2"
  #ami           = module.aws_ec2.ami
  instance_name = var.instance_name
  instance_type = var.instance_type
  
}

module "aws_nic" {
  source      = "./modules/aws_nic"
  ec2_id      = module.aws_ec2.ec2_id
  nic_tag     = var.nic_tag
  private_ips = var.private_ips
  subnet_id   = module.aws_subnet.subnet_id

}
