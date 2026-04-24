CREATE TABLE "public"."users" (
  "id"         BIGSERIAL    NOT NULL,
  "company_id" BIGINT       NOT NULL,
  "name"       VARCHAR(255) NOT NULL,
  "email"      VARCHAR(255) NOT NULL,
  "created_at" TIMESTAMPTZ  NOT NULL DEFAULT now(),
  "updated_at" TIMESTAMPTZ  NOT NULL DEFAULT now(),
  PRIMARY KEY ("id"),
  CONSTRAINT "fk_users_company_id"
    FOREIGN KEY ("company_id") REFERENCES "public"."companies" ("id") ON DELETE CASCADE
);

CREATE UNIQUE INDEX "idx_users_email" ON "public"."users" ("email");
