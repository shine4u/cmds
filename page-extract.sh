# hadoop数据到本地
hadoop fs -cat /user/service/results/patterncnt/part* > pattercnt.dat
# 统计站点数据
cat pattercnt.dat | awk -F'\t' '{if($1=="STAT_SITE")x[$3]+=$4}END{for(it in x)print it"\t"x[it]}' | sort
# 统计pattern数据
cat pattercnt.dat | awk -F'\t' '{if($1=="STAT_PATTERN")x[$3]+=$4}END{for(it in x)print it"\t"x[it]}' | sort    
