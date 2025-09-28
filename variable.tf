variable "dynamo_table_name" {
    type = string
    default =  "tws-free-bootcamp-table"
    description = "table name"

}

variable "ami_id" {
    default = "ami-0c55b159cbfafe1f0"
    type = string
    description  =  "ami id for ec2"
    
}