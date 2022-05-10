help:
	@echo "    deploy"
	@echo "        start all the docker containers"
	@echo "    default"
	@echo "        make request to the default backend"
	@echo "    app1"
	@echo "        make request to the app1 service"
	@echo "    app2"
	@echo "        make request to the app2 service"
	@echo "    clean"
	@echo "        clean up"
	@echo "    "

.PHONY: deploy
deploy:
	docker-compose up

.PHONY: app1
app1:
	curl -i localhost -H "Host: app1.test"

.PHONY: app2
app2:
	curl -i localhost -H "Host: app2.test"

.PHONY: default
default:
	curl -i localhost

.PHONY: clean
clean:
	docker-compose down
