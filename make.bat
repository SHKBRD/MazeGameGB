REM delete previous files
DEL *.gb

REM compile .c files into .o files
E:\gbdk\bin\lcc -c -o main.o main.c

REM Compile a .gb file from the compiled .o files
E:\GBDK\bin\lcc -o MazeGameGB.gb main.o

REM delete intermediate files created for the conmpilation process
DEL *.lst
DEL *.ihx
DEL *.sym
DEL *.o
@pause