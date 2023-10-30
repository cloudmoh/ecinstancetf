# ecinstancetf
Launch an ec2 instance under a default subnet and VPC using terraform template

We specify the AWS region and create an EC2 instance using the aws_instance resource.

We reference the default subnet and VPC using the data "aws_subnet" and resource "aws_vpc" blocks.

We create a security group (aws_security_group) for the EC2 instance and allow incoming SSH traffic (port 22).

The output block displays the public IP address of the EC2 instance.

Save the file and return to your terminal.

Initialize the Terraform working directory by running:

terraform init

To preview the changes Terraform will make, run:

terraform plan

If the plan looks good, apply the changes by running:

terraform apply

Terraform will prompt you to confirm the action. Type "yes" to proceed.

Terraform will create the resources as defined in your configuration. Once the EC2 instance is created, you can access it using the public IP address provided in the output.
![Screenshot (277)](https://github.com/cloudmoh/ecinstancetf/assets/126796948/09ec3741-bc30-423c-98f5-a22343ec4795)
![Screenshot (279)](https://github.com/cloudmoh/ecinstancetf/assets/126796948/0d626522-ed8a-4627-924a-d2c2e008a3bd)


