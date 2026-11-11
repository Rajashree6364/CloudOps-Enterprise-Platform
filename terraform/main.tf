provider "aws" {
  region = "ap-south-1"
}

resource "aws_vpc" "cloudbite_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = { Name = "CloudBite-VPC" }
}

resource "aws_eks_cluster" "cloudbite_eks" {
  name     = "cloudbite-cluster"
  role_arn = "arn:aws:iam::123456789012:role/EKSClusterRole"
  vpc_config {
    subnet_ids = ["subnet-12345678", "subnet-87654321"]
  }
}
