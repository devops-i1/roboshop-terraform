variable "components" {
  default = ["frontend", "catalogue", "cart", "user", "shipping", "payment", "dispatch"]
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

resource "aws_route53_record" "record" {
  count         = length(var.components)
  name    = var.components[count.index]
  type    = "A"
  zone_id = "Z08716401XK2LTO5VD1E1"
  records = [aws_instance.instance[count.index].private_ip]
  ttl     = 3
}