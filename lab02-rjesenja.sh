## zadatak 1
grep -cP "^\t.*" /usr/include/stdio.h
grep -cE "^extern.*\n*.*\(.*\n*.*__arg.*\n*.*).*\n*.*" /usr/include/stdio.h

## zadatak 2
cd /tmp
touch test
echo cba12.d > test
grep -e '^c[a-zA-Z]*[0-9]\{2\}\.[a-zA-Z]\{1,\}' /tmp/*
grep -e '[^a-k]*[0-9]\{1,\}[^a-k]*' /tmp/*

## zadatak 3
cat > Top10 << EOF
Linux Mint 19.1
Ubuntu 20.4
Debian GNU/Linux 10.7
Mageia 7.1
Fedora 33
openSUSE Leap 15.2
Arhc Linux
CentOS 8
PCLinuxOS
Slackware Linux 14.2
FreeBSD
EOF
sed -r "s/^.*[0-9]+.*//" ./Top10-copy
sed -r 's/([a-zA-Z\/]+)([[:space:]]*)([a-zA-Z\/]*)([[:space:]]*)([0123456789\.]+)/\5\2\1\2\3\4/' ./Top10

## zadatak 4
grep -r --include *.py 'def '
sudo grep -Er --include *.c --include *.h '^#.+'
sudo grep -nEr 'include'

## zadatak 5
rename "s/PNG-([0-9]{2})([0-9]{2})([0-9]{4})/\1_\2_\3.png/" PNG-*

## zadatak 6
cd downloads
for file in *; do
    if [[ "$file" == *"_"* ]]; then
        for (( i=0; i<${#file}; i++ )); do
            character="${file:$i:1}"
            if [ $character == "_" ]; then
                course_name=${file:0:$i}
                if ! [ -d "../$course_name" ]; then
                    mkdir ../$course_name
                fi
                mv $file ../$course_name
                break
            fi
        done
    else
        if ! [ -d "../razonoda" ]; then
            mkdir ../razonoda
        fi
        mv "$file" ../razonoda
    fi
done
cd ../razonoda
for file in *; do
    if [[ ${file: -4} == ".pdf" || ${file: -5} == ".epub" ]]; then
        if ! [ -d "../knjige" ]; then
            mkdir ../knjige
        fi
        mv "$file" ../knjige
    fi
    if [[ ${file: -4} == ".jpg" || ${file: -5} == ".jpeg" ]]; then
        if ! [ -d "../slike" ]; then
            mkdir ../slike
        fi
        mv "$file" ../slike
    fi
    if [[ ${file: -4} == ".mp3" ]]; then
        if ! [ -d "../muzika" ]; then
            mkdir ../muzika
        fi
        mv "$file" ../muzika
    fi
done
