resource "aws_instance" "web" { # web is for terraform reference only 
  ami           = var.ami-id
  for_each = var.instance-names
  instance_type = each.value
  tags = {
    Name = each.key
  }
}

resource "aws_route53_record" "www" {
  zone_id = var.zone_id
  for_each = aws_instance.web # Looping the output from the resouce definition
  name    = "${each.key}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [each.key == "frontend" ? each.value.public_ip : each.value.private_ip]
}
