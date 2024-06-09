# 概要
LPIC102に出題されるコマンドを確認するためのリポジトリ

# LPIC102_Learning


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


docker exec -it centos bash

```

6/9 確認したコマンド
docker exec -it centos /bin/bash /script/sample.bash
docker exec -it centos_main ping 8.8.8.8
docker exec -it centos_main ping 172.30.0.4

docker exec -it centos_main traceroute

# 参考
書籍
LPIC レベル1 Version4.0対応 翔泳社



https://hub.docker.com/_/centos