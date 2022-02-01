# 1. zadatak

cd /tmp/
mkdir LAB1
cd LAB1/
mkdir source
cd source/
touch empty
cp /boot/* /etc/* .
df --si
cd ..
ln -s /tmp/LAB1/source target
cd target
pwd
cd -P target
pwd
du -hsL target
touch -r empty novi
cd ..
rm -r ./*
cd ..
rmdir LAB1/


# 2. zadatak
while [ true ]
do
    read standard_input
    echo "$standard_input"
done

while [ true ]
do
    file = '/tmp/communication_file'
    if [ -f "$file" ]
    then
        touch /tmp/communication_file
        read standard_input
        echo "$standard_input" >> /tmp/communication_file
    fi
done

# 3. zadatak
ncal 2022 | grep pe | grep -o 13 | wc -l