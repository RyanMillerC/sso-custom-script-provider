.PHONY: build-jar

build-jar:
	cd script-provider; zip -r ../custom-authenticator.jar *
