variable "my-env" {
    description = "this is env for infra"
    type = string

}

variable "ami_id" {
    description = "ami id for ec2"
    type = string
}
variable "instance_type" {
    description = "instance type for ec2"
    type = string
}
variable "instance_count" {
    description = "value for instance count"
    type = number
}