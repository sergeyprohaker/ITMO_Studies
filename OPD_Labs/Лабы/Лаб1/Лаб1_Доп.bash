Задание: вывести содержимое файла построчно, если он запущен root пользователем и при запуске есть аргумент -debug

if [[ "$1" != "-debug" ]] || [[ "$(whoami)" != "root" ]];then
	echo "Run as root"
	else 
        IFS=$'\n'
        file="admin_stuff"
        for var in $(cat $file)
        do
                echo "$var"
        done
fi
