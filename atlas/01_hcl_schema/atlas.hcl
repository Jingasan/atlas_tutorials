# ========================================
# Atlasの設定ファイル
# ========================================

# 検証環境の定義
env "local" {
  # DBのURL
  url = "postgres://postgres:postgres@localhost:5432/postgres?sslmode=disable"
  # スキーマの保存先パス
  src = "file://schemas"
  # マイグレーションの保存先パス
  migration {
    dir = "file://migrations"
  }
}
