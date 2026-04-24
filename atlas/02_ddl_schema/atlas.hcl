# ========================================
# Atlasの設定ファイル
# ========================================

# 検証環境の定義
env "local" {
  # DBのURL
  url = "postgres://postgres:postgres@localhost:5432/postgres?sslmode=disable"
  # AtlasがDBマイグレーション時の検証用途で利用するDBのURL
  dev = "postgres://postgres:postgres@localhost:5432/migrations?sslmode=disable"
  # dev = "docker://postgres/18/dev" # Dockerコンテナを自動で立ち上げて利用することもできるが、処理が遅い
  # スキーマの保存先パス
  src = "file://schemas"
  # マイグレーション差分の保存先パス
  migration {
    dir = "file://migrations"
  }
}
