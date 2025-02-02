variable "instance_name" {
    type = list(string)
    default = [ "mysql" , "backend", "frontend" ]
  
}

variable "domain_name" {
    type = string
    default = "devopsaws82s.online"
  
}

variable "zone_id" {
    type = string
    default = "Z07890142HXNMPPOLRJE3"
  
}

variable "common_tags" {
    type = map 
    default = {
        project = "expense"
        Environment = "Dev"
    }  
}