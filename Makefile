CC = emcc
all: index.c
	$(CC) index.c -O2 -s USE_SDL=2 -s USE_SDL_IMAGE=2 -s SDL2_IMAGE_FORMATS='["png"]' -s USE_SDL_TTF=2 -s EXPORTED_FUNCTIONS='["mainf"]' --preload-file assets -o index.js -v
