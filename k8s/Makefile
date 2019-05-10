.PHONY: configmap

configmap:
	-kubectl delete configmap cms-xcache -n cms-admin
	kubectl create configmap cms-xcache -n cms-admin \
		--from-file=40-cms-xcache-optional.cfg --from-file=90-node-disks.cfg