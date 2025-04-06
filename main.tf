resource "snowflake_table" "demo_table" {
  database = snowflake_database.demo_db.name
  schema   = snowflake_schema.demo_schema.name
  name     = "TB_PIPELINE_METADATA"
  comment  = "Table created for Terraform Demo"
  change_tracking = false

  column {
    name    = "PIPELINE_ID"
    type    = "int"
    nullable = true
    default {
      sequence = snowflake_sequence.seq_seqnm.fully_qualified_name
    }
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
    name    = "SOURCE_STAGE"
    type    = "text"
    nullable = true
  }

  column {
    name    = "SOURCE_FILEFORMAT"
    type    = "text"
    nullable = true
  }

  column {
    name    = "SOURCE_RELATIVE_FILE_PATH"
    type    = "text"
    nullable = true
  }

  column {
    name    = "SOURCE_FILE_REGEX"
    type    = "text"
    nullable = true
  }

  column {
    name    = "SOURCE_FILE_TYPE"
    type    = "text"
    nullable = true
  }

  column {
    name    = "SOURCE_SCHEMATA_1"
    type    = "text"
    nullable = true
  }

  column {
    name    = "LANDING_DATABASE"
    type    = "text"
    nullable = true
  }

  column {
    name    = "LANDING_SCHEMA"
    type    = "text"
    nullable = true
  }

  column {
    name    = "LANDING_TABLE"
    type    = "text"
    nullable = true
  }

  column {
    name    = "TARGET_DATABASE"
    type    = "text"
    nullable = true
  }

  column {
    name    = "TARGET_SCHEMA"
    type    = "text"
    nullable = true
  }

  column {
    name    = "TARGET_TABLE"
    type    = "text"
    nullable = true
  }

  column {
    name    = "LOAD_TYPE"
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
