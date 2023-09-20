#! /bin/sh
PRO_NAME=/opt/hnNewYunce_PutInStorage/hnIDS_PutInStorage

time=`date +'%Y-%m-%d %H:%M:%S'`
echo "ikillyou sh start time : ${time}"

while true ; do
	sleep 3600s
	ps -ef | grep ${PRO_NAME} | grep -v grep | awk '{print $2}' | xargs kill
	time=`date +'%Y-%m-%d %H:%M:%S'`
	echo "${time} ${PRO_NAME} was killed"
done

exit 0

