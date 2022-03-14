ps -ef | grep $USER
ps -eo pid,user,%mem --sort %mem | grep $USER
top -U $USER -o +%MEM
pgrep -l firefox
ps -p 2
ps -p 1,4,7
pstree $USER
trap -l
cat /etc/shell

./signal_handler.out &
pid=$(ps | grep signal_handler | sed -r 's/^\s+([0-9]+)\s.*/\1/')
kill $pid

./signal_handler.out &
pid=$(ps | grep signal_handler | sed -r 's/^\s+([0-9]+)\s.*/\1/')
kill -SIGTERM $pid

./signal_handler.out &
pid=$(ps | grep signal_handler | sed -r 's/^\s+([0-9]+)\s.*/\1/')
kill -SIGUSR1 $pid

kill -SIGINT $pid

./signal_handler.out &
pid=$(ps | grep signal_handler | sed -r 's/^\s+([0-9]+)\s.*/\1/')
kill -SIGUSR2 $pid
