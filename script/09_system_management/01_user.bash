# ユーザ管理
# docker exec -it centos_main  bash script/09_system_management/01_user.bash

userdel -r linuxuser
echo "-----初期のユーザー情報-----"
cat /etc/passwd | grep  linuxuser

useradd -c "Linux User" -d "/home/linux" -s /bin/bash linuxuser

echo "-----linuxuserが追加されたこととディレクトリの作成を確認する-----"
cat /etc/passwd | grep linuxuser
ls -l /home/linuxuser
# ユーザー変更する
# パスワードの一時無効化、ロック解除もできる模様
# 今回はコメントとグループを変更する
usermod -g 0 -c "after changed"  linuxuser
echo "-----linuxuserが追加されたことを確認する-----"
cat /etc/passwd | grep linuxuser


# ユーザーを削除する
userdel -r linuxuser

# ユーザーの削除を確認する
echo "-----linuxuserが削除されたこととディレクトリの作成を確認する-----"
cat /etc/passwd | grep linuxuser
ls -l /home/linuxuser