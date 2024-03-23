resource "aws_subnet" "app_subnet" {
  count = 2  # Creating two subnets for high availability across two availability zones
  vpc_id = aws_vpc.app_vpc.id
  cidr_block = count.index == 0 ? "10.0.1.0/24" : "10.0.2.0/24"
  availability_zone = element(
    flatten([for az in data.aws_availability_zones.available.names : list(az)]),
    count.index,
  )
  map_public_ip_on_launch = true
  tags = {
    Name = "app_subnet_${count.index + 1}"
  }
}

data "aws_availability_zones" "available" {}