.PHONY: deploy build-jar

deploy:
	$(MAKE) build-jar
	oc create configmap custom-authenticator --from-file=custom-authenticator.jar --namespace rhsso-operator
	# oc create -f manifests

build-jar:
	cd script-provider; zip -r ../custom-authenticator.jar *

undeploy:
	oc delete configmap custom-authenticator
