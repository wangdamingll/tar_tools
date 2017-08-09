#!/bin/sh
zoo_start()
{
	sh /home/wdm/fuzhu/zookeeper/zookeeper0/bin/zkServer.sh start 
	sh /home/wdm/fuzhu/zookeeper/zookeeper1/bin/zkServer.sh start 
	sh /home/wdm/fuzhu/zookeeper/zookeeper2/bin/zkServer.sh start 
}

zoo_stop()
{
	sh /home/wdm/fuzhu/zookeeper/zookeeper0/bin/zkServer.sh stop 
	sh /home/wdm/fuzhu/zookeeper/zookeeper1/bin/zkServer.sh stop 
	sh /home/wdm/fuzhu/zookeeper/zookeeper2/bin/zkServer.sh stop 
}

zoo_status()
{
	sh /home/wdm/fuzhu/zookeeper/zookeeper0/bin/zkServer.sh status
	sh /home/wdm/fuzhu/zookeeper/zookeeper1/bin/zkServer.sh status
	sh /home/wdm/fuzhu/zookeeper/zookeeper2/bin/zkServer.sh status 
}

case $1 in
	"start")
		zoo_start
	;;
	"stop")
		zoo_stop
	;;
	"status")
		zoo_status
	;;
	*)
		echo "./shell param"
		echo "              start   start zookeeper"
		echo "              stop    stop zookeeper"
		echo "              status  zookeeper operating status"
	;;
esac
exit 0
