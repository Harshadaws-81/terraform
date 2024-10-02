variable "instance_names" {
    type = list(string)
    default = ["mysql" , "backend" , "frontend"]
}

variable "common_tags" {
    type = map 
    default = {
        Project = "expense"
        Environment = "dev"
        Terraform = "true"
    }
}

variable "zone_id" {
    default = "Z10285273HTISRK9KKTQT"
}

variable "domain_name" {
    default = "harshadaws81s.online"
}