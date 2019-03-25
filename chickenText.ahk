;-chickenText.ahk--------------
;-Ideally this will shift or caps lock alternating letters---------
;-What about an alternating on/off text replace? on for i= odd, off for i= even

 
^1::
var = 1

Loop
	{
	if (BreakLoop = 1)
		break
	
	res := OddOrEven(var)
	ShallWeShift(res)
	;MsgBox, Numb %res%
	var++
	
	}
	

OddOrEven(num)

{

return ((Num & 1) != 0) ? 1 : 0
; lol at this redundacy... if it's not 0 then it's 1 OMG

}

ShallWeShift(bin)

{
if (bin = 0)
{
	Input, SingleKey, I L1,, a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z
	key := SingleKey
	Send,%key%
	;MsgBox, %key%
	;MsgBox, Nah
}	
else 
	{
    Input, SingleKey, I L1,, a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z
	key := SingleKey
	;MsgBox, %key%
	;MsgBox, Yeh
	Send,{Shift Down}
	Send,%key%
	Send,{Shift Up}
}
return
}

	
Esc::
BreakLoop = 1
return
