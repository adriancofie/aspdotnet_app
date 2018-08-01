#! /bin/bash 
for i in $(curl -s -L example.com |egrep --only-matching 'http(s?):\/\/[^ \"\(\)\<\>]*' | uniq)
do
    curl -s -I "$i" 2>/dev/null | head -n 1 | cut -d' ' -f2
done
