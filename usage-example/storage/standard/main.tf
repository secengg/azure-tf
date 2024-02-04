module "servers" {
  source = "../../../storage"

  rggroup = var.rggroup
  location = var.location
  tier = var.tier
  replication_type = var.replication_type
  kind = var.kind
  name = var.name
  quota = var.quota
  access_tier = var.access_tier
}
