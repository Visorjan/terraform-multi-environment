provider "aws" {
  region = var.region
}

resource "aws_vpc" "dev" {
  cidr_block           = var.dev_vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "dev_vpc"
  }
}

resource "aws_subnet" "dev_subnet" {
  vpc_id     = aws_vpc.dev.id
  cidr_block = var.dev_subnet_cidr

  tags = {
    Name = "dev_subnet"
  }
}

resource "aws_instance" "dev_instance" {
  ami           = var.instance_ami
  instance_type = var.instance_type
  subnet_id     = aws_subnet.dev_subnet.id

  tags = {
    Name = "Dev-Instance"
  }
}

resource "aws_vpc" "staging" {
  cidr_block           = var.staging_vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "staging_vpc"
  }
}

resource "aws_subnet" "staging_subnet" {
  vpc_id     = aws_vpc.staging.id
  cidr_block = var.staging_subnet_cidr

  tags = {
    Name = "staging_subnet"
  }
}

resource "aws_instance" "staging_instance" {
  ami           = var.instance_ami
  instance_type = var.instance_type
  subnet_id     = aws_subnet.staging_subnet.id

  tags = {
    Name = "Staging-Instance"
  }
}

resource "aws_vpc" "prod" {
  cidr_block           = var.prod_vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "prod_vpc"
  }
}

resource "aws_subnet" "prod_subnet" {
  vpc_id     = aws_vpc.prod.id
  cidr_block = var.prod_subnet_cidr

  tags = {
    Name = "Prod-Subnet"
  }
}

resource "aws_instance" "prod_instance" {
  ami           = var.instance_ami
  instance_type = var.instance_type
  subnet_id     = aws_subnet.prod_subnet.id

  tags = {
    Name = "Prod-Instance"
  }
}
