ls -da /usr/share/gtk*
ls -da /usr/share/*[0-9]*[0-9]*
grep .*[0-9].* /usr/share/dict/words
grep -E ^i.*[A-Z].+$ /usr/share/dict/words
grep -E ^[^aeiou]*$ /usr/share/dict/words
grep -E '^.*[aeiou]{2,}.*$' /usr/share/dict/words
grep -cE '^.*ening$' /usr/share/dict/words
grep -cE "^.*'s" /usr/share/dict/words
grep -cE "^.*[A-Z]$" /usr/share/dict/words
cp /usr/share/dict/words .
sed -r "s/(^.*)'s$/\1s/" ./words > ./words-2
sed -r "s/^(.*)word(.*)$/word\1\2/" ./words-2 > ./words-3
sed -r "s/^([A-Z])(.*)([A-Za-z])$/\L&\1\2\U&\3/" ./words > ./words-4
sed -e 's/\(.*\)/\L\1/' ./Top10
sed -e 's/\([aeiou]\)/\U\1/g' ./Top10
