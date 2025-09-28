resource "aws_instance" "my-instance" {
    count = var.instance_count
    ami = var.ami_id 
    instance_type = var.instance_type
    tags = {
        Name = "${var.my-env}-free-devops-bootcamp-tws-instance"

    }

}