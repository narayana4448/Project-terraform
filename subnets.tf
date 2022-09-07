# Creating Private subnet 

resource "aws_subnet" "private_sub-1" {
  vpc_id                  = aws_vpc.demovpc.id
  cidr_block             = "192.168.1.0/24"
  availability_zone = "ap-southeast-1a"
tags = {
    Name = "private_sub-one"
  }
}

resource "aws_subnet" "private_sub-2" {
  vpc_id                  = aws_vpc.demovpc.id
  cidr_block             = "192.168.2.0/24"
  availability_zone = "ap-southeast-1a"
tags = {
    Name = "private_sub-two"
  }
}

# Creating public subnet 

resource "aws_subnet" "public_sub-1" {
  vpc_id                  = aws_vpc.demovpc.id
  cidr_block             = "192.168.3.0/24"
  availability_zone = "ap-southeast-1a"
tags = {
    Name = "public_sub-one"
  }
}

resource "aws_subnet" "public_sub-2" {
  vpc_id                  = aws_vpc.demovpc.id
  cidr_block             = "192.168.4.0/24"
  availability_zone = "ap-southeast-1a"
tags = {
    Name = "public_sub-two"
  }
}