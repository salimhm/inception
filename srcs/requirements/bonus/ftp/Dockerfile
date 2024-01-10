FROM	debian:stable

RUN	apt-get update && apt-get install -y vsftpd ftp vim

COPY	./tools/init.sh /

EXPOSE	210

ENTRYPOINT	["./init.sh"]

CMD ["/usr/sbin/vsftpd"]

