all: client server bw_template.c

client: client.c shared.h
	gcc client.c -o client

server: server.c shared.h
	gcc server.c -o server

template: bw_template.c
    gcc bw_template.c -libverbs -o server && ln -s server client
    
tar:
	tar -cvzf 315441683_206120537_204910681.tgz client.c server.c shared.h makefile client server

clean:
	rm client server
