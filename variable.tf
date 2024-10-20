variable "image_id" {
  type        = string
  description = "The id of the machine image (AMI) to use for the server."
}
variable "instance_type" {
  type        = string
  description = "Type of EC2 instance to launch. Example: t2.micro"
  default = "t2.micro"
}
variable "region" {
  type = string
  default = "ap-southeast-1"
}
variable "amis" {
  type = map(any)
  default = {
    "ap-southeast-1" : "ami-04b6019d38ea93034"
    "ap-northeast-1" : "ami-03f584e50b2d32776"
  }
}
