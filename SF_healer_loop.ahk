^a::

loop{
if (BreakLoop = 1)
		break

Send, %A_Tab%
Send, 1              ;tab target, then execute frost breath
Sleep, 1000
Send, %A_Tab%
Send, 1
Sleep, 1000
Send, %A_Tab%
Send, 1
Sleep, 1000
Send, 2            ;equilibrium heal
Sleep, 1000

}

	
Esc::
BreakLoop = 1
return
