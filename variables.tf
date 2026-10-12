variable "gcpkms_verify_lookup" {
  description = <<EOT
Map of gcpkms_verify_lookup, attributes below
Required:
    - digest
    - key_name
    - key_version
    - mount
    - signature
Optional:
    - namespace
EOT

  type = map(object({
    digest      = string
    key_name    = string
    key_version = number
    mount       = string
    signature   = string
    namespace   = optional(string)
  }))
}

