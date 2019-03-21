if [ "`id -u`" -eq 0 ]; then
	export PATH=$PATH:/cluster/global/bin:/cluster/global/sbin
else
	export PATH=$PATH:/cluster/global/bin
fi
