CREATE TABLE "public"."companies" (
  "id"         BIGSERIAL    NOT NULL,
  "name"       VARCHAR(255) NOT NULL,
  "created_at" TIMESTAMPTZ  NOT NULL DEFAULT now(),
  "updated_at" TIMESTAMPTZ  NOT NULL DEFAULT now(),
  PRIMARY KEY ("id")
);
