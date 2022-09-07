# Creating Route Table for private Subnet
resource "aws_route_table" "private_rt" {
    vpc_id = aws_vpc.demovpc.id

tags = {
        Name = "private Subnet Route Table-1"
    }
}

resource "aws_route_table_association" "rt_associate_private-1" {
    subnet_id = aws_subnet.private_sub-1.id
    route_table_id = aws_route_table.private_rt.id
}

resource "aws_route_table_association" "rt_associate_private-2" {
    subnet_id = aws_subnet.private_sub-2.id
    route_table_id = aws_route_table.private_rt.id
} 

# Creating Route Table for Public Subnet
resource "aws_route_table" "public_rt-1" {
    vpc_id = aws_vpc.demovpc.id
route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.igw.id
    }
tags = {
        Name = "Public Subnet Route Table-1"
    }
}

resource "aws_route_table_association" "rt_associate_public-1" {
    subnet_id = aws_subnet.public_sub-1.id
    route_table_id = aws_route_table.public_rt-1.id
}

resource "aws_route_table_association" "rt_associate_public-2" {
    subnet_id = aws_subnet.public_sub-2.id
    route_table_id = aws_route_table.public_rt-1.id
}
