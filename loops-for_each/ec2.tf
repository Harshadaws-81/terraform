resource "aws_security_group" "allow_ssh_terraform" {
  name        = "allow_sshhh" # allow_ssh is already there in my account
  description = "Allow port number 22 for SSH Access"

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}

resource "aws_instance" "expense" {
  # we want 3 instances "LOOP" is needed [for_each(loop)]
  for_each = var.instances # this variable is map 
  # for_each will give us a special variable with name each
  ami                    = "ami-09c813fb71547fc4f" # this AMI ID change over the time
  instance_type          = each.value
  vpc_security_group_ids = [aws_security_group.allow_ssh_terraform.id]
  tags = {
    Name = each.key
  }
}