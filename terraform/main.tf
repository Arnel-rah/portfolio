resource "cloudflare_record" "root" {
  zone_id         = var.cloudflare_zone_id
  name            = "@"
  content         = "cname.vercel-dns.com"
  type            = "CNAME"
  proxied         = true
  ttl             = 1
  allow_overwrite = true
}

resource "cloudflare_record" "www" {
  zone_id         = var.cloudflare_zone_id
  name            = "www"
  content         = "cname.vercel-dns.com"
  type            = "CNAME"
  proxied         = true
  ttl             = 1
  allow_overwrite = true
}