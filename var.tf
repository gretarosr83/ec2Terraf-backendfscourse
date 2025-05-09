variable "profile" {
  default = "demo"
}


variable "region" {
  default = "us-east-1"
}

variable "amis" {
   type = map(string)
   default = {
      us-east-1= "ami-084568db4383264d4" 
      us-west-2= "ami-00c257e12d6828491"
   }
}
variable "ingress_ports" {
  type = list(number)
  default = [ 22, 80,8080 ]
}

variable "egress_ports" {
  type = list(number)
  default = [ 443,1433 ]
}


variable "key_name" {
  
}

# variable "private_key_path" {
#   default = aws_key_pair.key_pair.key_name
# }