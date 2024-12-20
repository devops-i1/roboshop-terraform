variable "components" {
  default = ["frontend", "catalogue", "cart", "user", "shipping", "payment", "dispatch", "mongodb", "mysql", "rabbitmq", "redis" ]
}

resource "aws_instance" "instance" {
  count         = length(var.components)
  ami           = "ami-07fef30b81ec93e2e"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-050c53e3ec8b8a873"]

  tags = {
    Name = var.components[count.index]
  }
}