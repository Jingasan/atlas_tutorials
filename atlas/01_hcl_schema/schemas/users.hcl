table "users" {
  schema = schema.public

  column "id" {
    null = false
    type = bigserial
  }

  column "company_id" {
    null = false
    type = bigint
  }

  column "name" {
    null = false
    type = varchar(255)
  }

  column "email" {
    null = false
    type = varchar(255)
  }

  column "created_at" {
    null = false
    type    = timestamptz
    default = sql("now()")
  }

  column "updated_at" {
    null = false
    type    = timestamptz
    default = sql("now()")
  }

  primary_key {
    columns = [column.id]
  }

  foreign_key "fk_users_company_id" {
    columns     = [column.company_id]
    ref_columns = [table.companies.column.id]
    on_delete   = CASCADE
  }

  index "idx_users_email" {
    unique  = true
    columns = [column.email]
  }
}
