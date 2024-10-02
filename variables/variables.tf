# what is the 1st preference in Terrraform
# 1. command line --->   -var="instance_type=t3.large"
# 2. terraform.tfvars
# 3. environment variables ---> export TF_VAR
# 4. default
# 5. prompt

variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "This is the AMI ID of devops-practice which is RHEL-9"
}

variable "instance_type" {
    type = string
    default = "t3.small"
}

variable "tags" {
    type = map # optional to mention , because Terraform knows that TAGS is map
    default = {
        Name = "Terraform"
        Project = "expense"
        Component = "backend"
        Environment = "DEV"
        Terraform = "true" 
    }
}

variable "sg_name" {
    default = "allow_sshh"
}

variable "sg_description" {
    default = "Allow port number 22 for SSH Access"
}

variable "from_port" {
    type = number
    default = 22
}

variable "to_port" {
    type = number
    default = 22
}

variable "protocol" {
    default = "tcp"
}

variable "ingress_cidr" {
    type = list(string)
    default = ["0.0.0.0/0"]
}
