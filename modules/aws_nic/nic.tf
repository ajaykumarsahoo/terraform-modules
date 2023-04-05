#AWS NIC attach to AWS EC2 instance:


resource "aws_network_interface" "my_nic" {
  subnet_id       = var.subnet_id
  private_ips     = var.private_ips

  /*attachment {
    instance     = var.ec2_id
    device_index = 0
  }*/

  tags = var.nic_tag
  
}


