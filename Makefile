build: docker-build
	docker-compose run --rm app sbt assembly:assembly

clean:
	docker-compose run --rm app sbt clean

compile: docker-build
	docker-compose run --rm app sbt compile

test: compile
	docker-compose run --rm app sbt test

package: docker-build
	docker-compose run --rm app sbt package

#deploy: build
#	./ops/deploy.sh

docker-build:
	docker-compose build app
