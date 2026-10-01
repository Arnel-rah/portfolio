variable "cloudflare_api_token" {
  type        = string
  description = "Token API Cloudflare"
  sensitive   = true
}

variable "cloudflare_zone_id" {
  type        = string
  description = "Zone ID du domaine sadiarnel.me"
}

variable "domain_name" {
  type    = string
  default = "sadiarnel.me"
}