# hbk1-net/terraform

## これは何
hbk1-net 自宅サーバ管理用の Terraform リポジトリ。
現在、Proxmox 基板上のLXCコンテナの一部にのみ対応しています。

## つかいかた
- variables.tf をみて .tfvars に必要な変数を入力する
- 一部の credential 情報は .env で管理する
- plan.sh は .env を読み込んだ上で terraform plan する
- apply.sh は .env を読み込んだ上で terraform apply する
