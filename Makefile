CC = emcc
all: naked_owl.c
	$(CC) naked_owl.c -O2 -s USE_SDL=2 -s USE_SDL_IMAGE=2 -s SDL2_IMAGE_FORMATS='["png"]' -s USE_SDL_TTF=2 -s EXPORTED_FUNCTIONS='["_mainf"]' --preload-file assets -o naked_owl.js -v

