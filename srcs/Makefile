RED		= \033[1;31m
YELLOW	= \033[1;33m
RESET	= \033[0m

all:	volume hosts build up

hosts:
		@sudo sed -i "s/localhost/jgim.42.fr/g" /etc/hosts

volume:
		@echo "$(YELLOW)make Volume directory$(RESET)"
		sudo mkdir -p		/home/jgim/data/db-data
		sudo mkdir -p		/home/jgim/data/www-data

build:
		@echo "$(YELLOW)docker-compose build$(RESET)"
		sudo docker-compose -f srcs/docker-compose.yml build

up:
		@echo "$(YELLOW)docker-compose up$(RESET)"
		sudo docker-compose -f srcs/docker-compose.yml up -d

stop:
		@echo "$(YELLOW)docker-compose stop$(RESET)"
		sudo docker-compose -f srcs/docker-compose.yml stop

clean:
		@echo "$(RED)removing docker container$(RESET)"
		sudo docker-compose -f srcs/docker-compose.yml down
		@sudo sed -i "s/jgim.42.fr/localhost/g" /etc/hosts

fclean:	clean
		@echo "$(RED)removing all file$(RESET)"
		sudo docker rmi			mariadb wordpress nginx
		sudo docker system prune -a
		sudo rm -rf			/home/jgim/data

re:		fclean all

.PHONY:	all volume build up stop clean fclean re
