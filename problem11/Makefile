BIN=bin/problem11

all: $(BIN)

test: $(BIN)
	$(BIN)

$(BIN): problem11.hs
	mkdir -p bin/
	ghc -O2 -o $(BIN) problem11.hs

clean:
	-rm -rf bin/
	-rm *.o
	-rm *.hi
