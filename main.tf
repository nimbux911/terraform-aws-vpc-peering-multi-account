terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
      configuration_aliases = [aws.requester, aws.accepter]
    }
  }
}


locals {
  enabled = module.this.enabled
  count   = local.enabled ? 1 : 0

  accepter_enabled = local.enabled && var.accepter_enabled
  accepter_count   = local.enabled && var.accepter_enabled ? 1 : 0
}
