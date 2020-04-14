resource "aws_vpc" "vpc-main" {
  cidr_block        =   var.vpc_cidr
  instance_tenancy  =   var.tenancy

    tags   = {
        Name    =   "Main VPC"
    }
}

resource "aws_subnet" "snet-main" {
    vpc_id              =   var.vpc_id
    cidr_block          =   var.subnet_cidr

    tags   = {
        Name        =   "snet-main"
    }  
}


output "vpc_id" {
  value = "${aws_vpc.vpc-main.id}"
}

output "subnet_id" {
  value = "${aws_subnet.snet-main.id}"
}
