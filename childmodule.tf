module "ec2module" {
        source = "/opt/terraform/modules/ec2_only/"
       # instance_hw = "t2.nano"
        custom_ami_id = "ami-06a0b4e3b7eb7a300"
        aws_ec2_name = var.aws_ec2_name
                }

variable "aws_ec2_name" {}
