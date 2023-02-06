output "web_endpoint" {
  value       = "http://${aws_lb.platform_dev.dns_name}"
  description = "hit this url to access web server"
}
