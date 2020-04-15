all: client1.cpp
	g++ client1.cpp -o client1
	g++ client2.cpp -o client2
	g++ server1.cpp -o server1
	g++ server2.cpp -o server2

clean:
	-rm *.out
	-rm *.o
	-rm *~