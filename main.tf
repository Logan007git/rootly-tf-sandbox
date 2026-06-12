terraform {
  required_providers {
    rootly = {
      source  = "rootlyhq/rootly"
      version = "~> 1.5.0"
    }
  }
}

provider "rootly" {}

resource "rootly_severity" "sev_1" {
  name        = "Sev-1"
  description = "Critical Outage"
  severity    = "critical"
  color       = "#FF0000"
}

resource "rootly_severity" "sev_2" {
  name        = "Sev-2"
  description = "High Impact"
  severity    = "high"
  color       = "#FF9900"
}

resource "rootly_environment" "production" {
  name        = "Production"
  description = "Core Production Environment"
  color       = "#00FF00"
}
