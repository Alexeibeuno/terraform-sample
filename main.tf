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
}

resource "snowflake_table" "demo_table" {
database = snowflake_database.demo_db.name
schema = snowflake_database.demo_db.demo_schema.name
name = "TB_PIPELINE_METADATA"
comment = "Table created for Terrform Demo"
change_tracking = false
column {
name = "PIPELINE_ID"
type = "int"
nullable = true
default {
sequence = snowflake_sequence.seq_seqnm.fully_qualified_name
}
}
column {
name = "LOB"
type = "text"
nullable = true
}
}
column {
name = "SOURCE"
type = "text"
nullable = true
}
column {
name = "SOURCE_DATABASE_1"
type = "text"
nullable = true
}
column {
name = "SOURCE_SCHEMA"
type = "text"
nullable = true
}
column {
name = "SOURCE_STAGE"
type = "text"
nullable = true
}
column {
name = "SOURCE_FILEFORMAT"
type = "text"
nullable = true
}
column {
name = "SOURCE_RELATIVE_FILE_PATH"
type = "text"
nullable = true
}
column {
name = "SOURCE_FILE_REGEX"
type = "text"
nullable = true
}
column {
name = "SOURCE_FILE_TYPE"
type = "text"
nullable = true
}
column {
name = "SOURCE_SCHEMATA"
type = "text"
nullable = true
}
column {
name = "LANDING_DATABASE"
type = "text"
nullable = true
}
column {
name = "LANDING_SCHEMA"
type = "text"
nullable = true
}
column {
name = "LANDING_TABLE"
type = "text"
nullable = true
}
column {
name = "TARGET_DATABASE"
type = "text"
nullable = true
}
column {
name = "TARGET_SCHEMA"
type = "text"
nullable = true
}
column {
name = "TARGET_TABLE"
type = "text"
nullable = true
}
column {
name = "LOAD_TYPE"
type = "text"
nullable = true
}
column {
name = "LOAD_STATUS"
type = "text"
nullable = true
}
column {
name = "INS_TMESTMP"
type = "text"
nullable = true
}
column {
name = "COMMENTS"
type = "text"
nullable = true
}
