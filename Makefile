.PHONY : clean all build

all: exec
	
build: clean
	arch -x86_64 cc fib.c -o x86.out -O3
	arch -arm64 cc fib.c -o arm64.out -O3
	file *.out

exec: build
	time ./arm64.out
	time ./x86.out

exec10: 
	for i in {2..10}; do time ./x86.out; done
	for i in {1..10}; do time ./arm64.out; done

clean:
	rm -f *.out *asm

asm:
	arch -x86_64 cc fib.c -o x86.asm -O3 -S
	arch -arm64 cc fib.c -o arm64.asm -O3 -S
