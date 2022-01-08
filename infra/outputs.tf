# ------------------------------------------------------------------------------
# Output
# ------------------------------------------------------------------------------
output "App_DNS_Name" {
  description = "Application Domain Address"
  value       = aws_lb.this.dns_name
}

