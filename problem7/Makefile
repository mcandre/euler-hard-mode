all: problem7.beam

problem7.beam: problem7.erl
	erlc -Wall problem7.erl

run: problem7.beam
	erl -s problem7 -noshell

clean:
	-rm *.beam
