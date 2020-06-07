all: project

project: bw_template.c
	gcc bw_template.c -libverbs -o server && ln -sf server client

tar:
	tar -cvzf 315441683_206120537_204910681.tgz bw_template.c makefile client server

clean:
	rm -f client server
