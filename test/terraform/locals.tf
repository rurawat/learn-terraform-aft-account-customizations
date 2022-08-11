
locals {
  vpc-cidr = var.account_cidr
  region   = var.region
  subnet_cidr1_az1 = element(cidrsubnets(local.vpc-cidr, 3, 3, 3, 4,4,4,4,4,4,4,4,4),0)
  subnet_cidr1_az2 = element(cidrsubnets(local.vpc-cidr, 3, 3, 3, 4,4,4,4,4,4,4,4,4),1)
  subnet_cidr1_az3 = element(cidrsubnets(local.vpc-cidr, 3, 3, 3, 4,4,4,4,4,4,4,4,4),2)
  subnet_cidr2_az1 = element(cidrsubnets(local.vpc-cidr, 3, 3, 3, 4,4,4,4,4,4,4,4,4),3)
  subnet_cidr2_az2 = element(cidrsubnets(local.vpc-cidr, 3, 3, 3, 4,4,4,4,4,4,4,4,4),4)
  subnet_cidr2_az3 = element(cidrsubnets(local.vpc-cidr, 3, 3, 3, 4,4,4,4,4,4,4,4,4),5)
  subnet_cidr3_az1 = element(cidrsubnets(local.vpc-cidr, 3, 3, 3, 4,4,4,4,4,4,4,4,4),6)
  subnet_cidr3_az2 = element(cidrsubnets(local.vpc-cidr, 3, 3, 3, 4,4,4,4,4,4,4,4,4),7)
  subnet_cidr3_az3 = element(cidrsubnets(local.vpc-cidr, 3, 3, 3, 4,4,4,4,4,4,4,4,4),8)
  subnet_cidr4_az1 = element(cidrsubnets(local.vpc-cidr, 3, 3, 3, 4,4,4,4,4,4,4,4,4),9)
  subnet_cidr4_az2 = element(cidrsubnets(local.vpc-cidr, 3, 3, 3, 4,4,4,4,4,4,4,4,4),10)
  subnet_cidr4_az3 = element(cidrsubnets(local.vpc-cidr, 3, 3, 3, 4,4,4,4,4,4,4,4,4),11)

  CustomerName = var.account_name
  environment  = var.environment

  #vpc-region = (local.region t== "eu-west-2" ? data.terraform_remote_state.networking_state.outputs.vpc-london : data.terraform_remote_state.networking_state.outputs.vpc-ohio)

  account_id = data.aws_caller_identity.current.account_id
}
