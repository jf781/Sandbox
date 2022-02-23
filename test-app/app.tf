
resource "aws_instance" "server-1" {
  ami           = "ami-830c94e3"
  instance_type = "t2.nano"
  tags = {
    Name   = "server"
  }
}