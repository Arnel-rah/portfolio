resource "cloudflare_record" "apex" {
  zone_id         = var.cloudflare_zone_id
  name            = "@"
  content         = "cname.vercel-dns.com"
  type            = "CNAME"
  proxied         = true
  allow_overwrite = true
}

# Enregistrement pour le sous-domaine (www.sadiarnel.me)
resource "cloudflare_record" "www" {
  zone_id         = var.cloudflare_zone_id
  name            = "www"
  content         = "cname.vercel-dns.com"
  type            = "CNAME"
  proxied         = true
  allow_overwrite = true
}