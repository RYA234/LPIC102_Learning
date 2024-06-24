# 関数を確認
# docker exec -it centos_main  bash script/07_shellScript/03_function.bash

#関数を定義
function showHello(){
    echo "Hello World"
}
# 関数を呼び出す
showHello

# 関数を削除
unset showHello
# 関数を呼び出せないことを確認
showHello