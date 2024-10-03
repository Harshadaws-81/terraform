resource "aws_security_group" "allow_ssh_terraform" {
    name = "allow_sshh" # allow_ssh is already there in my account
    description = "Allow port number 22 for SSH Access"
    
# ingress ---> incoming traffic
# egress ---> outgoing traffic
# usually we allow everything in egress
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    } 
    tags = {
        Name = "Terraform"
    }  
} 

resource "aws_instance" "terraform" {
    count = 3
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.allow_ssh_terraform.id]
    tags = {
        Name = var.instance_names[count.index]
    }
}