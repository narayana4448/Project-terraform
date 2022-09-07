resource "aws_route53_zone" "primary" {
  name = "geo-terraform-test.com"
}

resource "aws_route53_record" "record" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = "instance-test.geo-terraform-test.com"
  type    = "A"
  ttl     = 300
  records = [aws_instance.private-instance.private_ip]
}
