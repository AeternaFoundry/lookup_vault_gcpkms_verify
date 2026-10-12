output "gcpkms_verify_lookup_digest" {
  description = "Map of digest values across all gcpkms_verify_lookup, keyed the same as var.gcpkms_verify_lookup except keys with no digest are omitted"
  value       = { for k, v in data.vault_gcpkms_verify.gcpkms_verify_lookup : k => v.digest if v.digest != null && length(v.digest) > 0 }
}
output "gcpkms_verify_lookup_key_name" {
  description = "Map of key_name values across all gcpkms_verify_lookup, keyed the same as var.gcpkms_verify_lookup except keys with no key_name are omitted"
  value       = { for k, v in data.vault_gcpkms_verify.gcpkms_verify_lookup : k => v.key_name if v.key_name != null && length(v.key_name) > 0 }
}
output "gcpkms_verify_lookup_key_version" {
  description = "Map of key_version values across all gcpkms_verify_lookup, keyed the same as var.gcpkms_verify_lookup except keys with no key_version are omitted"
  value       = { for k, v in data.vault_gcpkms_verify.gcpkms_verify_lookup : k => v.key_version if v.key_version != null }
}
output "gcpkms_verify_lookup_mount" {
  description = "Map of mount values across all gcpkms_verify_lookup, keyed the same as var.gcpkms_verify_lookup except keys with no mount are omitted"
  value       = { for k, v in data.vault_gcpkms_verify.gcpkms_verify_lookup : k => v.mount if v.mount != null && length(v.mount) > 0 }
}
output "gcpkms_verify_lookup_namespace" {
  description = "Map of namespace values across all gcpkms_verify_lookup, keyed the same as var.gcpkms_verify_lookup except keys with no namespace are omitted"
  value       = { for k, v in data.vault_gcpkms_verify.gcpkms_verify_lookup : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "gcpkms_verify_lookup_signature" {
  description = "Map of signature values across all gcpkms_verify_lookup, keyed the same as var.gcpkms_verify_lookup except keys with no signature are omitted"
  value       = { for k, v in data.vault_gcpkms_verify.gcpkms_verify_lookup : k => v.signature if v.signature != null && length(v.signature) > 0 }
}
output "gcpkms_verify_lookup_valid" {
  description = "Map of valid values across all gcpkms_verify_lookup, keyed the same as var.gcpkms_verify_lookup except keys with no valid are omitted"
  value       = { for k, v in data.vault_gcpkms_verify.gcpkms_verify_lookup : k => v.valid if v.valid != null }
}

