variable "instance_names" {
  type    = list(string)
  default = ["mysql", "backend", "frontend"]
}

# instances will be created following the index order - 0,1,2