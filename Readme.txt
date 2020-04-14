THIS REPOSITORY CARRIES THE AUTOMATION CODE FOR AWS USING MODULES CONCEPT
The hierachi would be like this..
 TERRAFORM-APP
   MODULE
     VPC
       vars.tf
       vpc-template.tf
     EC2
      vars.tf
      ec2-template.tf
  DEV
     dev-main.tf
  TEST
     test-main.tf
  PROD
     prod-main.tf
