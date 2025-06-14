resource "aws_instance" "ec-2" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name =  "Linux1"
}
