## zadatak 1
sudo useradd -M -s /bin/bash stjepan
mkdir /home/studenti
mkdir /home/studenti-shared
chgrp STUDENTI /home/studenti
chgrp STUDENTI /home/studenti-shared
chmod g=r /home/studenti
chmod g=rw,o=-rwx /home/studenti-shared
mkdir /home/studenti/skeleton/Downloads
mkdir /home/studenti/skeleton/Documents
mkdir /home/studenti/skeleton/Desktop
mkdir /home/studenti/skeleton/Music
mkdir /home/studenti/skeleton/Pictures
mkdir /home/studenti/skeleton/Videos
mkdir /home/studenti/skeleton/Public
ln -s /home/studenti/skeleton/Shared /home/studenti-shared
touch ./korisnici.dat
cat > korisnici.dat << EOF
matej
marko
luka
ivan
EOF
while read -r line;
do
    useradd -M -s /bin/bash $line
    mkdir /home/studenti/$line;
    cp /home/studenti/skeleton* /home/student/$line
    chown $line /home/studenti/$line
    chmod u=rwx,go=-rwx /home/studenti/$line
done < "./korisnici.dat"

## sudoers file
# #
# # This file MUST be edited with the 'visudo' command as root.
# #
# # Please consider adding local content in /etc/sudoers.d/ instead of
# # directly modifying this file.
# #
# # See the man page for details on how to write a sudoers file.
# #
# Defaults	env_reset
# Defaults	mail_badpass
# Defaults	secure_path="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/snap/bin"

# # Host alias specification

# # User alias specification
# User_Alias	GROUPONE = stjepan
# # Cmnd alias specification
# Cmnd_Alias	USERCOMMANDS = /sbin/adduser, /sbin/useradd, /sbin/deluser, /sbin/usermod, /sbin/addgroup, /sbin/groupmod, /sbin/delgroup
# GROUPONE	ALL = NOPASSWD: USERCOMMANDS
# # User privilege specification
# root	ALL=(ALL:ALL) ALL

# # Members of the admin group may gain root privileges
# %admin ALL=(ALL) ALL

# # Allow members of group sudo to execute any command
# %sudo	ALL=(ALL:ALL) ALL

# # See sudoers(5) for more information on "#include" directives:

# #includedir /etc/sudoers.d
## end sudoers file

## zadatak 2
