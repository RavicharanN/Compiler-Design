gcc -Wall -fPIC -c add.c 
gcc -Wall -fPIC -c sub.c
gcc -shared -o liblolmath.so add.o sub.o
gcc -I . -c demo.c
gcc -o demo demo.o liblolmath.so
export LD_LIBRARY_PATH=$pwd:$LD_LIBRARY_PATH
ldd demo