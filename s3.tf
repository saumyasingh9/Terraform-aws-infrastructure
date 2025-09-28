resource "aws_s3_bucket" "my-bucket" {
    bucket = "free-devops-bootcamp-tws"
    tags = {
        Name = "free-devops-bootcamp-tws"
    }

}