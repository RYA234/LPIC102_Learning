# bash　引数の確認
# docker exec -it centos_main  bash script/07_shellScript/06_test/main.bash

chmod  666 script/07_shellScript/06_test/main.bash

if test  -f script/07_shellScript/06_test/exit;
then
    echo "ファイルが存在します"
else
    echo "ファイルが存在しません"
fi

if test  -r script/07_shellScript/06_test/exit;
then
    echo "読み込み可"
else
    echo "読み込み不可"
fi

if test  -w script/07_shellScript/06_test/exit;
then
    echo "書き込み可"
else
    echo "書き込み不可"
fi

if test  -x script/07_shellScript/06_test/exit;
then
    echo "実行可"
else
    echo "実行不可"
fi

num=1

case $num in
    1)
        echo "1です";;
    2)
        echo "2です";;
    3)
        echo "3です";;
esac

for var in Vine SUSE Gentoo
do
    echo $var Linux
done

for i in 'seq 10 15'
do
    echo $i
done