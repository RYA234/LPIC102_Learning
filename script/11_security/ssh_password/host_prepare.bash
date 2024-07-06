# host 側 centos_hostの準備
# client側がssh接続をする前に実行する。以下コマンドで実行できる。
# docker exec -it centos_main  bash script/11_security/ssh_password/host_prepare.bash >> ./host_prepare.log
# echo "↓↓↓↓↓↓↓↓↓↓"
# echo "↑↑↑↑↑↑↑↑↑↑"

# パッケージのインストール
echo "↓↓↓↓↓パッケージのインストール↓↓↓↓↓"
yum -y install openssh-server
echo "--------1.openssh-serverがインストール済みであることを確認----------"
yum list installed | grep openssh-server
echo "↑↑↑↑↑パッケージのインストール↑↑↑↑↑"

# sshdを起動する
echo "↓↓↓↓↓sshdの起動↓↓↓↓↓"
systemctl start sshd.service
systemctl status sshd.service | grep sshd.service
systemctl status sshd.service | grep Active
echo "↑↑↑↑↑sshdの起動↑↑↑↑↑"

# configファイルの設定
# PasswordAuthentication

sed  's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config |grep PasswordAuthentication yes
# PasswordAuthentication yes であることを確認
cat /etc/ssh/sshd_config | grep PasswordAuthentication
echo "↓↓↓↓↓ユーザの追加↓↓↓↓↓"
# パスワードの暗号化
encrypted_password=$(openssl passwd -crypt test)

# ssh専用ユーザーを作成
useradd  -p "$encrypted_password" testuser

# ユーザーが作成されることを確認
less /etc/passwd | grep testuser
echo "↑↑↑↑↑ユーザの追加↑↑↑↑↑"
