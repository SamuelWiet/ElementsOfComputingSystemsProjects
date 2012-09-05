// screen pixel 
// Draw a single black dot at the screen's top left corner:
// @SCREEN // 16384 Set the A register to point to the memory
// word that is mapped to the 16 left-most
// pixels of the top row of the screen.
// M=-1 // Blacken the left-most pixels.

(Start)
@SCREEN
D=A
@R1
M=D

// max address @32767

// killing @-1
// D=A
// @R4
// M=D
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