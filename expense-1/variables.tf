variable "instance_names" {
  type        = list(string)
  default     = ["mysql", "backend", "frontend"]
  description = "var.instance_names[count.index]"
}

variable "domain_name" {
  default = "harshadaws81s.online"
}

variable "zone_id" {
  default = "Z10285273HTISRK9KKTQT"
}