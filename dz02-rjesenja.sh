echo $(date) > dz02.dat
cat >> dz02.dat << EOF
OKOSL
EOF
echo "linux <3" | tee -a dz02.dat
cat > korisnici.dat << EOF
90835 Matija Matijašević
70934 Ivan Ivanović
83430 Marko Marković
95235 Ana Anić
70934 Ivan Ivanović
EOF
sort -k 1 korisnici.dat > korisnici.sortirano.dat
sort -u --ignore-case -k 1 korisnici.dat > jedinstveni.korisnici.dat
uniq --ignore-case -D korisnici.sortirano.dat > nejedinstveni.korisnici.dat
grep "ping" /usr/share/dict/words | wc -l
grep "you" /usr/share/dict/words > yous.dat
wc -w yous.dat
find jedinstveni.korisnici.dat
locate jedinstveni.korisnici.dat
ls -al ~ | grep sij