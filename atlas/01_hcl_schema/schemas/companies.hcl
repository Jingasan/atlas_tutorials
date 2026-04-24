schema "public" {}

table "companies" {
  schema = schema.public

  column "id" {
    null = false
    type = bigserial
  }

  column "name" {
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
}
