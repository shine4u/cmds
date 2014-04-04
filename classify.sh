nohup cat 201404/150q.pmmark | sh get_join_dat.sh > 201404/150q.joindat 2> 201404/150q.joinlog
/home/users/search/local/bin/python ../bin/classify_prod.py --input-files 201404/150q.joindat   --format-xml ../conf/join.xml --format-out-xml ../conf/final.xml -v 1>201404/150q.progmark 2>201404/150q.classifylog
/home/users/search/local/bin/python report.py -p  201404/150q.progmark -m 201404/150q.pmmark 1>201404/150q.stat 2>201404/150q.statlog
