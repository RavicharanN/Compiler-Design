gcc -c sub.c
gcc -c add.c
ar rs liblolmath.a add.o sub.o
rm *.o
gcc -I . -c demo.c
gcc -o demo demo.o liblolmath.a 
echo "\n **running ./demo**"
./demo 
echo "\n"
