build:
	mv site/..git site/.git
serve:
	docker run -it --rm --name vuln-git-deploy -p 8080:80 -v $(shell pwd)/site:/app:ro -w /app php:7.3.1-cli-alpine3.8 php -S 0.0.0.0:80

