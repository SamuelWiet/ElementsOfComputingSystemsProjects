// This file is part of the materials accompanying the book 
// "The Elements of Computing Systems" by Nisan and Schocken, 
// MIT Press. Book site: www.idc.ac.il/tecs
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[3], respectively.)

// Put your code here.
// MULT_R0 = R0
// R2 = 0
// WHILE R0 > 0 
//   R2 = R2 + R1
//   R0--
// R0 = MULT_RO

// http://code.google.com/p/nand-to-tetris/source/browse/trunk/project+04+-+Machine+Level+Programming/mult/Mult.asm?r=9

// save R0 at MULT_R0
  @R0
  D=M
  @MULT_R0
  M=D    
// R2 = 0
  @R2
  M=0  
(beginWhile)
//  if R0 <= 0 goto endWhile
  @R0
  D=M
  @endWhile
  D;JLE
//  R2 = R2 + R1
//  D = R2
//  D = D + R1
  @R2
  D=M
  @R1
  D=D+M
  @R2
  M=D
//  R0--
  @R0
  M=M-1
  @beginWhile
  0;JMP 
(endWhile)
// restore R0
  @MULT_R0
  D=M
  @R0
  M=D
(END)
  @END
  0;JMP
  
