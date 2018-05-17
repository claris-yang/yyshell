#!/bin/sh
set -x
game_id=595575
mysql_game_channel_online_conn='mysql -h ip -u statdbuser_wr -ppassword databasename'

#======================================
function clean_env() {
        rm -rf *.apk
}

function invoke_sql() {
        local sql=$1
        $mysql_game_channel_online_conn -e "$sql"
        if [ 0 -ne $? ]; then
                echo " 执行sql = $sql 失败"
                exit
        fi
}


