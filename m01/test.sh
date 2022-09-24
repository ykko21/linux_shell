work_dir="/c/Users/ykko2/test"

tar xvfz test.tar.gz
rm output.txt
touch output.txt
for f in $work_dir/*.log
do
   cat $f | egrep "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$" | tee -a output.txt
done
