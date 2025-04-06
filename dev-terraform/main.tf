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
  organization_name = "PBXUDTW"  # required if not using profile. Can also be set via SNOWFLAKE_ORGANIZATION_NAME env var
  account_name      = "VY63582"  # required if not using profile. Can also be set via SNOWFLAKE_ACCOUNT_NAME env var
  user              = "HALEXE"   # required if not using profile or token. Can also be set via SNOWFLAKE_USER env var
  password          = "J2ZA.e4TNHuWw_B"
}

resource "snowflake_database" "demo_db" {
  name = "DEV2"
}

resource "snowflake_schema" "demo_schema" {
  database = snowflake_database.demo_db.name
  name     = "DEV1_Schema_PR"
}


resource "snowflake_table" "demo_table" {
  database = snowflake_database.demo_db.name
  schema   = snowflake_schema.demo_schema.name
  name     = "TB_PIPELINE_METADATA"
  comment  = "Table created for Terraform Demo"
  change_tracking = false

  column {
    name    = "PIPELINE_ID_1"
    type    = "int"
    nullable = true
  }

  column {
    name    = "LOB"
    type    = "text"
    nullable = true
  }

  column {
    name    = "SOURCE_1"
    type    = "text"
    nullable = true
  }

  column {
    name    = "SOURCE_DATABASE_1"
    type    = "text"
    nullable = true
  }

  column {
    name    = "SOURCE_SCHEMA_1"
    type    = "text"
    nullable = true
  }

  column {
    name    = "SOURCE_STAGE_1"
    type    = "text"
    nullable = true
  }

  column {
    name    = "SOURCE_FILEFORMAT_1"
    type    = "text"
    nullable = true
  }

  column {
    name    = "SOURCE_RELATIVE_FILE_PATH_1"
    type    = "text"
    nullable = true
  }

  column {
    name    = "SOURCE_FILE_REGEX_1"
    type    = "text"
    nullable = true
  }

  column {
    name    = "SOURCE_FILE_TYPE_1"
    type    = "text"
    nullable = true
  }

  column {
    name    = "SOURCE_SCHEMATA_1"
    type    = "text"
    nullable = true
  }

  column {
    name    = "LANDING_DATABASE_1"
    type    = "text"
    nullable = true
  }

  column {
    name    = "LANDING_SCHEMA_1"
    type    = "text"
    nullable = true
  }

  column {
    name    = "LANDING_TABLE_1"
    type    = "text"
    nullable = true
  }

  column {
    name    = "TARGET_DATABASE_1"
    type    = "text"
    nullable = true
  }

  column {
    name    = "TARGET_SCHEMA_1"
    type    = "text"
    nullable = true
  }

  column {
    name    = "TARGET_TABLE_1"
    type    = "text"
    nullable = true
  }

  column {
    name    = "LOAD_TYPE_1"
    type    = "text"
    nullable = true
  }

  column {
    name    = "LOAD_STATUS"
    type    = "text"
    nullable = true
  }

  column {
    name    = "INS_TMESTMP"
    type    = "text"
    nullable = true
  }

  column {
    name    = "COMMENTS"
    type    = "text"
    nullable = true
  }
}
