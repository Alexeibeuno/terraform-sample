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
password          = "J2ZA.e4TNHuWw_B"
}

resource "snowflake_database" "demo_db" {
   name = "DEV1"
}

resource "snowflake_schema" "demo_schema" {
  database = snowflake_database.demo_db.name
  name     = "DEV1_Schema_2"
  comment  = "Schema for Snowflake Terraform demo"
}
