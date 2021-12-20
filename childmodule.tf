module "ec2module" {
        source = "../../tmp/puppet/"
        custom_ami_id = "ami-06a0b4e3b7eb7a300"
        aws_ec2_name = var.aws_ec2_name
                }

variable "aws_ec2_name" {}

output "awsip" { value = module.ec2module.awsip }
