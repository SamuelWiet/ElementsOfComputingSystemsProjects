// This file is part of the materials accompanying the book 
// "The Elements of Computing Systems" by Nisan and Schocken, 
// MIT Press. Book site: www.idc.ac.il/tecs
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.


// While (true)
//   init screen base address
//   for (i = 8192; i!=0; i--)
//   read kbd
//   if key pressed
//      black current screen address
//   else
//      white current screen address
//   increment screen address pointer
// 


(Start)
@SCREEN
D=A
@R1
M=D
	// 256 Lines with 512 pixel per row or 32 words per row
	// i=256*32=8192
@8192
D=A
@R0
M=D
	(ScreenLoopStart)
      @R0
      D=M
	  @ScreenLoopEnd
	  D;JEQ 
	  
	  // Offset R1
      @KBD
      D=M
      @FillWhite
      D;JEQ
	  // FillBlack
	    @R1
	    A=M
	    M=-1
		
		@EndFillWhite
		0;JMP 
	  (FillWhite)
	    @R1
	    A=M
	    M=0
	  
	  (EndFillWhite)
	  
	  @R1
	  M=M+1
	  
      @R0
	  M=M-1
      @ScreenLoopStart
	  0;JMP
	(ScreenLoopEnd)
@Start
0;JMP

