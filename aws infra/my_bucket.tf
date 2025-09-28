resource "aws_s3_bucket" "my-bucket" {
    bucket = "${var.my-env}-free-devops-bootcamp-tws"
    tags = {
        Name = "${var.my-env}-free-devops-bootcamp-tws"
        environment = var.my-env
    }

}