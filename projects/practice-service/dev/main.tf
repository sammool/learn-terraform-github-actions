module "vpc" {
  source      = "../../../modules/vpc"
  cidr_block  = var.cidr_block
  common_tags = var.common_tags
}

module "internet_gateway" {
  source      = "../../../modules/internet_gateway"
  igw_vpc_id  = module.vpc.vpc_id
  common_tags = var.common_tags
}

module "subnet" {
  source                  = "../../../modules/subnet"
  subnet_vpc_id           = module.vpc.vpc_id
  subnet_cidr_block       = var.subnet_cidr_block
  availability_zone_index = var.availability_zone_index
  common_tags             = var.common_tags
}