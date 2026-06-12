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
  name        = "TF-Production"
  description = "Core Production Environment"
  color       = "#00FF00"
}

resource "rootly_service" "cy_prod" {
  name        = "CY PROD"
  description = "Primary production environment alerts migrated from Spike.sh routing."
  color       = "#E11D48"
}

resource "rootly_service" "ecs_services" {
  name        = "ECS Services"
  description = "ECS cluster monitoring and incident tracking."
  color       = "#2563EB"
}

resource "rootly_form" "New_1" {
  name        = "Form-1"
  description = "Desc"
  color       = "#2563EB"
