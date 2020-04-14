provider "aws" {
    region      =   us-west-2
    access_key  =   ""
    secret_key  =   ""
}

module "my_dev_vpc" {
    source      = "../module/vpc"
    vpc_cidr    =   "192.169.0.0/16"
    tenancy     =   "default"
    vpc_id      =   "${module.vpc.vpc_id}"
    subnet_cidr =   "192.169.1.0/24"
}

module "my_dev_ec2" {
    source          =   "../module/ec2"
    ec2_count       =   1
    instance_type   =   t2.micro
    subnet_id       =   "${module.vpc.subnet_id}"   
}

