resource "aws_security_group" "allow_ssh_terraform" {
    name = var.sg_name # allow_ssh is already there in my account
    description = var.sg_description
# ingress ---> incoming traffic
# egress ---> outgoing traffic
# usually we allow everything in egress  ;; BLOCK ---> egress {  ; KEY VALUE ---> egress ={
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }

    ingress {
        from_port = var.from_port
        to_port = var.to_port
        protocol = var.protocol
        cidr_blocks = var.ingress_cidr  # allow from every one
        ipv6_cidr_blocks = ["::/0"]
    } 
    tags = var.tags
} 

resource "aws_instance" "terraform" {
    ami = var.ami_id  # there won't be a problem if both sides(left & right) names are same
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.allow_ssh_terraform.id]
    tags = var.tags
}