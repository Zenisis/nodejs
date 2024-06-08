# vpc
resource "aws_vpc" "master2" {
    cidr_block = "10.0.0.0/16"
  
}

resource "aws_subnet" "public" {
  
  vpc_id            = aws_vpc.master2.id
  
  cidr_block        =  "10.0.1.0/24"
  availability_zone = "us-east-1a"

}


resource "aws_subnet" "public2" {
  vpc_id     = aws_vpc.master2.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-east-1b"

 
}

resource "aws_route_table" "max" {
  vpc_id = aws_vpc.master2.id
  route  {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my_igw.id
  }
  
}



resource "aws_route_table_association" "max1"{
  route_table_id = aws_route_table.max.id
  subnet_id = aws_subnet.public.id
}

resource "aws_route_table_association" "max2"{
  route_table_id = aws_route_table.max.id
  subnet_id = aws_subnet.public2.id
}




resource "aws_internet_gateway" "my_igw" {
  vpc_id =  aws_vpc.master2.id
  
}








# resource "aws_subnet" "private" {
#   count = length(var.private_subnet_cidr_block)
#   vpc_id            = aws_vpc.master.id
#   cidr_block        = var.private_subnet_cidr_block[count.index]
#   availability_zone = element(var.availability_zones,count.index)
# }












  











