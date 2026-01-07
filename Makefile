linenoise_example: linenoise.h linenoise.c

linenoise_example: linenoise.c example.c
	$(CC) -Wall -W -Os -g -o linenoise_example linenoise.c example.c

linenoise-test: linenoise-test.c linenoise_example
	$(CC) -Wall -W -Os -g -o linenoise-test linenoise-test.c

test: linenoise-test linenoise_example
	./linenoise-test

clean:
	rm -f linenoise_example linenoise-test
