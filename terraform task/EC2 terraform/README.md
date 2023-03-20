TF-EC2


This is the AWS EC2 instance for deploying EC2 in given region
This code will create Multiple Elastic compute cloud 

Usage
Create a terrfaorm.tfvars file by looking into the terraform.tfvars.example file
Run terraform init -backend-config=backend.tf
Run terraform plan --var-file=terraform.tfvars
if all good then, run terraform apply --var-file=terraform.tfvars
This will deploy EC2 with region. Along with that will store state in S3 bucket.

Inputs
Name	Description	Type	Default	Required
access_key	AWS user access key, where you want to deploy infra	string	""	yes
secret_key	AWS user secret key for above mentioned key	string	""	yes
region	AWS Region where you want to deploy it	string	"us-east-1"	yes

