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
  for_each = aws_instance.web

  name    = "${each.key}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [startswith(each.key, "frontend") ? each.value.public_ip : each.value.private_ip]

}
