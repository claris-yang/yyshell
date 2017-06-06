#!/bin/sh

gzip $1
cur_path= ls 
gzip -d  $1.gz
new_cur_path= ls


