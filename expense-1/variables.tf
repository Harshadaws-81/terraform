variable "instance_names" {
  type        = list(string)
  default     = ["mysql", "backend", "frontend"]
  description = "description"
}

variable "domain_name" {
  default = "harshadaws81s.online"
}

variable "zone_id" {
  default = "Z10285273HTISRK9KKTQT"
}