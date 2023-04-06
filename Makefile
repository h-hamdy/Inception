NAME	= inception

all:
	@cd srcs ; docker-compose up --build

down:
	@cd srcs ; docker-compose down


delete:
	@cd srcs ; docker system prune -a

status:
	@docker ps
