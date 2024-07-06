# client_prepare.bash とhost_prepare.bash
# 手動で実行する

# クライアントのサーバーに入る
docker exec -it centos_sub bash

# ip: 172.30.0.2 ユーザー名
ssh testuser@172.30.0.2

#finger print
yes

# パスワードを入力
test