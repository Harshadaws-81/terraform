locals {
  domain_name   = "harshadaws81s.online"
  zone_id       = "Z10285273HTISRK9KKTQT"
  instance_type = var.environment == "prod" ? "t3.medium" : "t3.micro"
}

# count.index will not work in locals