
' PicoCalc Morse Code Oscillator
' Paul Stoetzer, N8HM
' 700 Hz tone and LED visual
' Put LED in GP28

CLS

Print "PicoCalc Morse Code Oscillator"
Print "By Paul Stoetzer, N8HM"
Print " "
Print "Insert LED in GP28 for visual"
Print " "
Print "Press A for DAH"
Print "Press S for DIT"
Print "Press X to Exit"

' Set LED Location

SetPin gp28, dout

' Intro "HI DE N8HM"

  dit
  dit
  dit
  dit
  space
  dit
  dit
  wordspace
  dah
  dit
  dit
  space
  dit
  wordspace
  dah
  dit
  space
  dah
  dah
  dah
  dit
  dit
  space
  dit
  dit
  dit
  dit
  space
  dah
  dah
  wordspace

' Input Loop

Do
  a$=Inkey$
  If a$="a" Then dah
  If a$="s" Then dit
  If a$="x" Then End
Loop

End

' Morse Code Generation Subroutines

Sub dah
  Pin(gp28)=1
  Play tone 700,700,300
  Pause 300
  Pin(gp28)=0
  Pause 100
End Sub

Sub dit
  Pin(gp28)=1
  Play tone 700,700,100
  Pause 100
  Pin(gp28)=0
  Pause 100
End Sub

Sub space
  Pause 200
End Sub

Sub wordspace
  Pause 600
End Sub
