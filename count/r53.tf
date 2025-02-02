resource "aws_route53_record" "expense-private" {
    count = 3
  zone_id = var.zone_id
  name    = "${var.instance_name[count.index]}.${var.domain_name}" #interpolation
  type    = "A"
  ttl     = 1
  records = [aws_instance.this[count.index].private_ip] #list type
  allow_overwrite = true
}

resource "aws_route53_record" "expense-public" {
  zone_id = var.zone_id
  name    = var.domain_name #interpolation
  type    = "A"
  ttl     = 1
  records = [aws_instance.this[2].public_ip] #list type
  allow_overwrite = true
}