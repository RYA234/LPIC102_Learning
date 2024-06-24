# グループ管理
# docker exec -it centos_main  bash script/09_system_management/02_group.bash
echo "-----初期のグループ情報情報-----"
cat /etc/group | grep  newGroup

groupadd newGroup
echo "-----追加後のグループ情報情報-----"
cat /etc/group | grep  newGroup

groupmod -n changedGroup -g 444 newGroup 
echo "-----変更後のグループ情報情報-----"
cat /etc/group | grep  newGroup
cat /etc/group | grep  changedGroup


useradd  -G 444 sample
id sample