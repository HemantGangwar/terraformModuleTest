resource "aws_instance" "myec2" {
        ami             = var.custom_ami_id
        instance_type   = var.instance_hw
        tags = {
                Name    = var.aws_ec2_name
                }
        }


#### DEFINING VARIABLE DECLARATION #######

variable "instance_hw" {
        default = "t2.micro"
        }

variable "aws_ec2_name" {}

variable "custom_ami_id" {
        default = "ami-06a0b4e3b7eb7a300"
        }

#### END - DEFINING VARIABLE DECLARATION ##########
