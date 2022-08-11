
locals {
  vpc-cidr = "192.168.0.0/24"
  region   = "eu-west-2"
  subnet_cidr1_az1 = element(cidrsubnets("192.168.0.0/24", 3, 3, 3, 4,4,4,4,4,4),0)
  subnet_cidr1_az2 = element(cidrsubnets("192.168.0.0/24", 3, 3, 3, 4,4,4,4,4,4),1)
  subnet_cidr1_az3 = element(cidrsubnets("192.168.0.0/24", 3, 3, 3, 4,4,4,4,4,4),2)
  subnet_cidr2_az1 = element(cidrsubnets("192.168.0.0/24", 3, 3, 3, 4,4,4,4,4,4),3)
  subnet_cidr2_az2 = element(cidrsubnets("192.168.0.0/24", 3, 3, 3, 4,4,4,4,4,4),4)
  subnet_cidr2_az3 = element(cidrsubnets("192.168.0.0/24", 3, 3, 3, 4,4,4,4,4,4),5)
  subnet_cidr3_az1 = element(cidrsubnets("192.168.0.0/24", 3, 3, 3, 4,4,4,4,4,4),6)
  subnet_cidr3_az2 = element(cidrsubnets("192.168.0.0/24", 3, 3, 3, 4,4,4,4,4,4),7)
  subnet_cidr3_az3 = element(cidrsubnets("192.168.0.0/24", 3, 3, 3, 4,4,4,4,4,4),8)

  CustomerName = "TestyBoi"
  environment  = "Test"

  #vpc-region = (local.region t== "eu-west-2" ? data.terraform_remote_state.networking_state.outputs.vpc-london : data.terraform_remote_state.networking_state.outputs.vpc-ohio)

  account_id = "468972105923"
}
