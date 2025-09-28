resource "aws_key_pair" "deployer" {
    key_name = "tws-terra-key"
    public_key = file("${path.module}/terra-key.pub")

}

resource "aws_default_vpc" "default" {

}

resource "aws_security_group" "twssecurity" {
    name = "allow ports"
    description = "to open ports fro ec2"
    vpc_id = aws_default_vpc.default.id


    ingress {
        description = "ssh"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        description = "outgoing traffic"
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

resource "aws_instance" "my-instance" {
    ami = var.ami_id 
    instance_type = "t2.micro"
    key_name = aws_key_pair.deployer.key_name
    security_groups = [aws_security_group.twssecurity.name]
    tags = {
        Name = "terra-automate"

    }

}