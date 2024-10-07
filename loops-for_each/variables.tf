variable "instances" {
  type = map(any)
  default = {
    mysql    = "t3.small"
    backend  = "t3.micro"
    frontend = "t3.micro"
  }
}
# each.key = mysql/backend/frontend

# each.value = t3.micro/t3.small .....  based on info provided

variable "zone_id" {
  default = "Z10285273HTISRK9KKTQT"
}

variable "domain_name" {
  default = "harshadaws81s.online"
}