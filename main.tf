data "vault_gcpkms_verify" "gcpkms_verify_lookup" {
  for_each = var.gcpkms_verify_lookup

  digest      = each.value.digest
  key_name    = each.value.key_name
  key_version = each.value.key_version
  mount       = each.value.mount
  signature   = each.value.signature
  namespace   = each.value.namespace
}

