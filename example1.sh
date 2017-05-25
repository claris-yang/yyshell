#!/bin/sh
num=12
echo "nihao ${num}1"

file_line_num= wc -l example1.sh
file_word_num= wc -w example1.sh
file_char_num= wc -c example1.sh

cut_cmd= cut -b5-9 example1.sh

file_type= file example1.sh

read var
echo $var

sort_file= sort example1.sh

sorted_file= sort sort.txt | uniq

add_num= expr 2 "+" 3


echo number of arguments $#

echo all arguments is $@

if [ -z "$myvar" ]
then
        echo "myvar is not defined"
fi

if [ 2 -eq 2 ]
then
        echo " 2 equal 2!"
fi

if [ 2 -ne 3 ]
then
        echo "2 inequality 3"
fi

if [ -f $1 ]
then
        echo "$1 is a file"
fi

myvar="foo bar oni"
if [ "$myvar" = "foo bar oni" ]
then
        echo " last equal"
fi

for x in one two three
do
        echo number $x
done

for x in ../*
do
        if [ -f $x ]
        then
                echo "[file] filename = " $x
        fi


        if [ -d $x ]
        then
                echo "[dir] dictionary = " $x
        fi

done

for x in ../* mystuff/*
do
        echo $x is a silly file
done


for x in /Users/*
do
        echo each $x
done

add1="1"

num1=$(( add1 + 2 ))

echo $num1

while [  $num1 -ne 0 ]
do
        echo $num1
        num1=$(( $num1 - 1 ))
done

myvar=0
until [ $myvar -eq 10 ]
do
        echo $myvar
        myvar=$(( $myvar + 1))
done

filename=example1.sh

case "${filename##*.}" in
        sh)
                echo "this is sh file"
                ;;
        bz2)
                echo "this bz2 file"
                ;;
        *)
                echo "anywaye"
                exit
                ;;
esac

tarview() {
        echo -n "display file zip type"
        if [ ${1##*.} = tar ]
        then
                echo "(uncompressed tar)"
                tar tvf $1
        elif [ ${1##*.} = gz ]
        then
                echo "(gzip-compressed tar)"
                tar tzvf $1
        elif [ ${1##*.} = bz2 ]
        then
                echo "(bzip2-compressed tar)"
                cat $1 | bzip2 -d | tar tvf -
        fi
}


tarview $1

hello() {
        echo $1;
}

hello  'niaho'

print_loop() {
        loop_num=$1
        while [ $loop_num -ne 0 ]
        do
                if [ 'expr $loop_num "/" 3' -eq 0 ]
                then
                        echo "print_loop" $loop_num
                        loop_num=$(( $loop_num -  1 ))
                fi

        done
}

print_loop 5
