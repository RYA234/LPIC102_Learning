# 概要
LPIC102に出題されるコマンドを確認するためのリポジトリ


# 構成

コンテナ名|IPアドレス|説明
------|------|----
centos_main|172.30.0.2|メインで操作するときのコンテナ
centos_sub|172.30.0.4|ネットワークの確認をするときに使うコンテナ

# 開発環境
|名称|説明|
|---|----|
Docker|仮想化マシン
github Codespaces |ブラウザで動くIDE
CentOS7|Linuxディストリビューション

# 操作方法

```bash
docker-compose build

docker-compose up


# コンテナ初期化して再起動
 docker-compose down & docker-compose up


docker exec -it centos_main bash

```

# 動作確認

```bash

# centos_mainからcentos_subに接続できること
docker exec -it centos_main ping 172.30.0.4

# centos_subからcentos_mainに接続できること
docker exec -it centos_sub ping 172.30.0.2

# 外部のネットワークは繋がらない
docker exec -it centos_main ping 8.8.8.8


```

6/9 確認したコマンド
docker exec -it centos /bin/bash /script/sample.bash

# 参考
書籍
LPIC レベル1 Version4.0対応 翔泳社



https://hub.docker.com/_/centos

https://engineering.nifty.co.jp/blog/6523