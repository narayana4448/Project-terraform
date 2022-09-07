# Creating EC2 instance in Private Subnet
resource "aws_instance" "private-instance" {
  ami           = "ami-0b89f7b3f054b957e"
  instance_type = "t2.micro"
  key_name = "ap-southeast-key"
  # vpc_security_group_ids = [ aws_security_group.allow_ssh.id ]
  subnet_id = aws_subnet.private_sub-1.id


tags = {
    Name = "Private Instance"
  }
}