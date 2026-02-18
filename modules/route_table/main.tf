resource "aws_route_table" "route_table" {
    vpc_id = var.route_table_vpc_id
    tags   = var.common_tags
}

resource "aws_route" "route"{
    count = var.is_for_public_subnet ? 1 : length(var.route_table_cidr_blocks)
    route_table_id = aws_route_table.route_table.id
    destination_cidr_block = var.is_for_public_subnet ? "0.0.0.0/0" : var.route_table_cidr_blocks[count.index]
    gateway_id = var.is_for_public_subnet ? var.route_table_igw_id : null
}

resource "aws_route_table_association" "route_table_association" {
    subnet_id      = var.route_table_subnet_id
    route_table_id = aws_route_table.route_table.id
}