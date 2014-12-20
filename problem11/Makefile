BIN=bin/problem11

all: test

test: $(BIN)
	time $(BIN)

$(BIN): problem11.hs
	mkdir -p bin/
	ghc -O2 -o $(BIN) problem11.hs

clean:
	-rm -rf bin/
	-rm *.o
	-rm *.hi
