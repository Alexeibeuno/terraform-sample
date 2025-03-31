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
organization_name = "PBXUDTW" # required if not using profile. Can also be set via SNOWFLAKE_ORGANIZATION_NAME env var
account_name      = "VY63582" # required if not using profile. Can also be set via SNOWFLAKE_ACCOUNT_NAME env var
user              = "HALEXE" # required if not using profile or token. Can also be set via SNOWFLAKE_USER env var
password          = "Senorita@b0211"
}

resource "snowflake_schema" "DEV_1_Schema" {
  database = snowflake_database.DEV_1.name
  name     = "DEV1_SCHEMA"
  comment  = "Schema for Snowflake Terraform demo"
}
