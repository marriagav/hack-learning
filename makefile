start-runtime:
	colima start --profile amd --arch x86_64 --cpu 4 --cpu-type "max" --memory 16 --network-address
start-runtime-rosetta:
	colima start --profile rosetta --cpu 4 --cpu-type "max" --memory 16 --arch aarch64 --vm-type=vz --vz-rosetta --mount-type virtiofs --network-address
run:
	docker-compose up
stop:
	docker stop hack-learning-hack-dev-1
delete:
	docker rm hack-learning-hack-dev-1
install:
	docker exec hack-learning-hack-dev-1 composer install
update:
	docker exec hack-learning-hack-dev-1 composer update
lint:
	docker exec -it hack-learning-hack-dev-1 vendor/bin/hhast-lint
test:
	docker exec hack-learning-hack-dev-1 vendor/bin/hacktest tests/
shell:
	docker exec -it hack-learning-hack-dev-1 /bin/bash