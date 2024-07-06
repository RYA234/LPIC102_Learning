# client 側 centos_subの準備
# docker exec -it centos_sub  bash script/11_security/ssh_password/client_prepare.bash >> ./client_prepare.log

# Packegeのインストール
yum -y install openssh-clients
# インストールy
yum list installed | grep ssh
