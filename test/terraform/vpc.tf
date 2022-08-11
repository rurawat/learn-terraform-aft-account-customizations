module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "3.11.3"


  name = "vpc-${local.region}-${local.environment}"
  cidr = local.vpc-cidr

  azs              = ["${local.region}a", "${local.region}b", "${local.region}c"]
  public_subnets   = ["${local.subnet_cidr3_az1}", "${local.subnet_cidr3_az2}"]
  #private_subnets  = ["${local.subnet_cidr1_az1}", "${local.subnet_cidr1_az2}", "${local.subnet_cidr1_az3}"]
  #database_subnets = ["${local.subnet_cidr2_az1}", "${local.subnet_cidr2_az2}", "${local.subnet_cidr2_az3}"]

  enable_vpn_gateway                 = false
  propagate_private_route_tables_vgw = false
  enable_nat_gateway                 = false
  enable_dns_hostnames               = false

  public_subnet_tags = {
    Name = "net-${local.region}-${local.environment}-public-${local.CustomerName}"
  }

  # private_subnet_tags = {
    # Name = "net-${local.region}-${local.environment}-application-${local.CustomerName}"
  # }

   #database_subnet_tags = {
     #Name = "net-${local.region}-${local.environment}-data-${local.CustomerName}"
  # }

   #private_route_table_tags = {
    # Name = "rtb-${local.region}-${local.environment}-${local.purpose}"
  # }

  tags = {
    CustomerName = "${local.CustomerName}"
    Environment  = "${local.environment}"
  }

  vpc_tags = {
    Name = "vpc-${local.region}-${local.environment}"
  }
}
