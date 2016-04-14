gateway: gateway.o urlencode.o base64.o sha256.o habitat.o ssdv.o ftp.o network.o server.o cmp.o
	cc -o gateway gateway.o urlencode.o base64.o sha256.o habitat.o ssdv.o ftp.o network.o server.o cmp.o -lm -lwiringPi -lwiringPiDev -lcurl -lncurses -lpthread

gateway.o: gateway.c global.h
	gcc -c gateway.c

habitat.o: habitat.c habitat.h global.h
	gcc -c habitat.c
	
ssdv.o: ssdv.c ssdv.h global.h
	gcc -c ssdv.c
	
ftp.o: ftp.c ftp.h global.h
	gcc -c ftp.c
	
server.o: server.c server.h global.h
	gcc -c server.c
	
network.o: network.c network.h global.h
	gcc -c network.c
	
urlencode.o: urlencode.c
	gcc -c urlencode.c

base64.o: base64.c
	gcc -c base64.c

sha256.o: sha256.c
	gcc -c sha256.c

cmp.o: cmp/cmp.c cmp/cmp.h
	gcc -c cmp.c