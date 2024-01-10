mkdir	= ./srcs/requirements/tools/mkdir.sh
DOCKER_IMAGES	=	$(shell docker images -qa)

help:
	@echo " ▄▄▄▄▄▄▄▄▄▄▄  ▄▄        ▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄        ▄ "
	@echo "▐░░░░░░░░░░░▌▐░░▌      ▐░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░▌      ▐░▌"
	@echo " ▀▀▀▀█░█▀▀▀▀ ▐░▌░▌     ▐░▌▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀▀▀▀█░▌ ▀▀▀▀█░█▀▀▀▀  ▀▀▀▀█░█▀▀▀▀ ▐░█▀▀▀▀▀▀▀█░▌▐░▌░▌     ▐░▌"
	@echo "     ▐░▌     ▐░▌▐░▌    ▐░▌▐░▌          ▐░▌          ▐░▌       ▐░▌     ▐░▌          ▐░▌     ▐░▌       ▐░▌▐░▌▐░▌    ▐░▌"
	@echo "     ▐░▌     ▐░▌ ▐░▌   ▐░▌▐░▌          ▐░█▄▄▄▄▄▄▄▄▄ ▐░█▄▄▄▄▄▄▄█░▌     ▐░▌          ▐░▌     ▐░▌       ▐░▌▐░▌ ▐░▌   ▐░▌"
	@echo "     ▐░▌     ▐░▌  ▐░▌  ▐░▌▐░▌          ▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌     ▐░▌          ▐░▌     ▐░▌       ▐░▌▐░▌  ▐░▌  ▐░▌"
	@echo "     ▐░▌     ▐░▌   ▐░▌ ▐░▌▐░▌          ▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀▀▀▀▀▀      ▐░▌          ▐░▌     ▐░▌       ▐░▌▐░▌   ▐░▌ ▐░▌"
	@echo "     ▐░▌     ▐░▌    ▐░▌▐░▌▐░▌          ▐░▌          ▐░▌               ▐░▌          ▐░▌     ▐░▌       ▐░▌▐░▌    ▐░▌▐░▌"
	@echo " ▄▄▄▄█░█▄▄▄▄ ▐░▌     ▐░▐░▌▐░█▄▄▄▄▄▄▄▄▄ ▐░█▄▄▄▄▄▄▄▄▄ ▐░▌               ▐░▌      ▄▄▄▄█░█▄▄▄▄ ▐░█▄▄▄▄▄▄▄█░▌▐░▌     ▐░▐░▌"
	@echo "▐░░░░░░░░░░░▌▐░▌      ▐░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌               ▐░▌     ▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌      ▐░░▌"
	@echo " ▀▀▀▀▀▀▀▀▀▀▀  ▀        ▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀                 ▀       ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀        ▀▀"
	@echo "𝔻𝕠𝕟'𝕥 𝕪𝕠𝕦 𝕨𝕒𝕟𝕥 𝕥𝕠 𝕥𝕒𝕜𝕖 𝕒 𝕝𝕖𝕒𝕡 𝕠𝕗 𝕗𝕒𝕚𝕥𝕙? 𝕆𝕣 𝕓𝕖𝕔𝕠𝕞𝕖 𝕒𝕟 𝕠𝕝𝕕 𝕞𝕒𝕟, 𝕗𝕚𝕝𝕝𝕖𝕕 𝕨𝕚𝕥𝕙 𝕣𝕖𝕘𝕣𝕖𝕥, 𝕨𝕒𝕚𝕥𝕚𝕟𝕘 𝕥𝕠 𝕕𝕚𝕖 𝕒𝕝𝕠𝕟𝕖!"
	@echo "													~𝕊𝕒𝕚𝕥𝕠"
	@echo
	@echo
	@echo
	@echo type "==>make all<==" to set everything up
	@echo type "==>make build<==" to only build
	@echo type "==>make up<==" to get started "(similar to make all but doesn't update if there was any)"
	@echo type "==>make down<==" to remove any running container and volumes
	@echo type "==>make all down<==" to remove and clean everything
	@echo type "==>make re<==" to clean everything and build the containers from scratch
all:	
	$(mkdir)
	cd srcs && docker compose up -d --build && cd ..

up:
	cd srcs && docker compose up -d && cd ..

build:
	cd srcs && docker compose build && cd ..

down:
	cd srcs && docker compose down -v && cd ..

fclean:
	cd srcs && docker compose down -v && cd ..
	cd srcs && docker image rm $(DOCKER_IMAGES) && cd ..
	docker system prune	
	sudo rm -rf /home/shmimi/data

re:	fclean all
.PHONY: help all up build down re
