if [ ! -d "/home/shmimi/data" ]; then
        echo Directories created!	
	mkdir -p /home/$USER/data/wp
	mkdir -p /home/$USER/data/db
	mkdir -p /home/$USER/data/portfolio
fi
