whoami | xargs touch
echo $USER >> $USER
echo $HOME >> $USER
echo $SHELL >> $USER
cat /etc/group | grep $USER | sed -r 's/([a-zA-Z]+):.*/\1/' >> $USER
group_id=$(cat /etc/passwd | grep $USER |  sed -r "s/^$USER:.*:.*:([0-9]+):.*/\1/")
cat /etc/passwd | grep $group_id | sed -r 's/([a-zA-Z]+):.*/\1/' >> $USER
rm $USER

adduser weakling
usermod -aG sudo weakling
su - weakling
touch /tmp/dat
chmod u=r,go-rwx /tmp/dat
chmod o=w /tmp/dat
ls -l /tmp/dat | sed -r 's/.+\s[0-9]+\s[a-zA-Z]+\s([a-zA-Z]+)\s.*/\1/'
logout
sudo userdel -r weakling
