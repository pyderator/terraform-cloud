provider "aws" {
  region = var.region

}
resource "aws_vpc" "test_vpc" {
  cidr_block = "172.16.0.0/16"
  tags       = var.tags
}

resource "aws_subnet" "test_subnet" {
  vpc_id            = aws_vpc.test_vpc.id
  cidr_block        = "172.16.10.0/24"
  availability_zone = "us-east-1a"

  tags = var.tags
}


resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.test_vpc.id

  tags = var.tags
}


resource "aws_instance" "tf" {
  ami                         = "ami-04505e74c0741db8d"
  instance_type               = "t2.micro"
  associate_public_ip_address = true

}
