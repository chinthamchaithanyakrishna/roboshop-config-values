resource "vault_mount" "component" {
  path     = "cart-dev"
  type     = "kv-v2"
  options = {
    version = "2"
    type    = "kv-v2"
  }
  description = "cart Dev"
}