resource "aws_instance" "myec2" {
        ami             = var.custom_ami_id
        instance_type   = var.instance_hw
        tags = {
                Name    = var.aws_ec2_name
                }
        key_name        = var.aws_key_name
        }


#### DEFINING VARIABLE DECLARATION #######

variable "instance_hw" {
        default = "t2.micro"
        }

variable "aws_ec2_name" {}

variable "custom_ami_id" {
        default = "ami-06a0b4e3b7eb7a300"
        }

variable "aws_key_name" {
        default = "aws-exam-testing"
        }

output "awsip" { value = aws_instance.myec2.public_ip }
#### END - DEFINING VARIABLE DECLARATION ##########

