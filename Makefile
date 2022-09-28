
generate-client:
	java -jar ~/bin/openapi-generator-cli.jar generate \
		-i api.yaml \
		-g go \
		--output client

generate-server:
	java -Dnoservice -jar ~/bin/openapi-generator-cli.jar generate \
		-i api.yaml \
		-g go-server \
		-p outputAsLibrary=true,onlyInterfaces=true,sourceFolder=server \
		--output server		