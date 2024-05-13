resource="aws_security_group" "allow_ssh" {
    name= "allow_ssh"
    description= "allowing SSH access"

    ignore{
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_block  = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }
    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_block  = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }
    tags{
        Name = "allow_ssh"
        CreatedBy = "Basid"
    }
}