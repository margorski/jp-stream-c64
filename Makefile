ifeq ($(OS),Windows_NT)
	EMUBIN=${K65_PATH}\bin\Vice.exe
else
    EMUBIN=x64
endif


K65=${K65_PATH}/workdir/k65.exe
FilesList=files.lst

all: main run

main: 
	$(K65) @$(FilesList)
	
run:
	$(EMUBIN) bin/example.prg
