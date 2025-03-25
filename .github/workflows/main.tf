terraform {
  required_providers {
    snowflake = {
      source  = "registry.terraform.io/snowflake-Labs/snowflake"
      version = "~> 0.87"
    }
  }

  backend "remote" {
    organization = "Snow-Git-Terr"

    workspaces {
      name = "gh-actions-demo"
    }
  }
}

provider "snowflake" {
}

resource "snowflake_database" "demo_db" {
  name    = "DEV"
  comment = "Database for Snowflake Terraform demo"
}
