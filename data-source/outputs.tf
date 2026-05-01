output "ami_id" {
  value       = data.aws_ami.joindevops.id
  description = "This is the output of RHEL-9 AMI ID"
}

# outputs is helpfull in just printing the value of a resource or data source.