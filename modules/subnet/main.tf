resource "aws_subnet" "subnet"{
    vpc_id            = var.subnet_vpc_id
    cidr_block        = var.subnet_cidr_block
    availability_zone = data.aws_availability_zones.available.names[var.availability_zone_index]
}