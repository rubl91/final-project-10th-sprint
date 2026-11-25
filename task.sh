#!/bin/bash

mkdir -p task/dir1 task/dir2 task/dir3/dir4

cd task

touch dir2/empty

echo '#!/bin/bash
echo "$1, привет!"' > dir2/hello.sh

chmod 764 dir2/hello.sh

ls -1 dir2 > dir2/list.txt

cp -r dir2/. dir3/dir4/

find ./dir2 ./dir3 ./dir1 -type f -name '*.txt' > ./dir1/summary.txt

cat dir2/list.txt >> dir1/summary.txt

NAME='Всем студентам'

./dir2/hello.sh "$NAME" >> dir1/summary.txt

mv dir1/summary.txt 'Практическое задание'

cat 'Практическое задание'

grep 'dir' 'Практическое задание' | sort

cd ..

rm -r task
