.PHONY: all ubuntu-vnc ubuntu-vnc-java spin-sim spin-triton spin-down

all: ubuntu-vnc ubuntu-vnc-java

ubuntu-vnc:
	docker build -t robocupssl/ubuntu-vnc:latest src/ubuntu-vnc

ubuntu-vnc-java: ubuntu-vnc
	docker build -t robocupssl/ubuntu-vnc-java:latest src/ubuntu-vnc-java

ubuntu-vnc-go: ubuntu-vnc
	docker build -t robocupssl/ubuntu-vnc-go:latest src/ubuntu-vnc-go

spin-sim:
	sudo docker-compose up

spin-triton:
	sudo docker-compose -f docker-compose-teams.yaml up team-tritons

spin-down:
	sudo docker-compose down -v --remove-orphans
	sudo docker-compose -f docker-compose-teams.yaml down -v --remove-orphans