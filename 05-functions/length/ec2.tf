resource "aws_instance" "web" { # web is for terraform reference only 
  ami           = var.ami-id
  count = length(var.instance-names) # this length function will calculate the length of variables in var.instance-names dynamically
  instance_type = var.instance-names[count.index] == "mongodb" || var.instance-names[count.index] == "mysql" ? "t3.small" : "t3.micro"
  
  tags = {
    Name = var.instance-names[count.index]
  }
}

resource "aws_route53_record" "www" {
  zone_id = var.zone_id
  count = length(var.instance-names)
 # name    = "${var.instance-names[count.index]}.devopsprocloud.in" # Interpolation --> mixing variable with statis text
  name    = "${var.instance-names[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [var.instance-names[count.index] == "frontend" ? aws_instance.web[count.index].public_ip : aws_instance.web[count.index].private_ip]
}
