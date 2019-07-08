^e::
  If SavedCapsLock=
  {
    GetKeyState,SavedCapsLock,CapsLock,T
    SetTimer, RandomCL, 25
  }
  Else
  {
    SetTimer, RandomCL, Off
    If SavedCapsLock=D
      SetCapsLockState,On
    Else
      SetCapsLockState,Off
    SavedCapsLock=
  }
Return  

RandomCL:
  Random, rand, 0, 1
  if (rand)
     SetCapslockState, On
  else
     SetCapslockState, Off
return