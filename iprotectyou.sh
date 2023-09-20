#! /bin/sh
PRO_NAME=/opt/hnNewYunce_PutInStorage/hnIDS_PutInStorage
EXEC_CMD='sh /opt/hnNewYunce_PutInStorage/hnIDS_PutInStorage.sh > /opt/hnNewYunce_PutInStorage/debug.log'

time=`date +'%Y-%m-%d %H:%M:%S'`
echo "iprotectyou sh start time : ${time}"

while true ; do
	NUM=`ps aux | grep -w ${PRO_NAME} | grep -v grep |wc -l`
	if [ "${NUM}" -lt "1" ];then
		time=`date +'%Y-%m-%d %H:%M:%S'`
		echo "${time} ${PRO_NAME} was killed"
		${EXEC_CMD}
	fi
	sleep 60s
done

exit 0

