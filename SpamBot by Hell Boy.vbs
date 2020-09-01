X=MsgBox("Ovaj SpamBot je kodiran od strane Geldregen-a (Hell Boy) i kompletno je na Srpskom Jeziku, skinite program ispod za Englesku Verziju.",0+64,"Informacija pre koriscenja!")

set shell = createobject ("wscript.shell")

strtext = inputbox ("Napisite poruku koju zelite da spamujete.", "Coded by Geldregen (Hell Boy)")
strtimes = inputbox ("Koliko puta zelite da spamujete poruku?", "Coded by Geldregen (Hell Boy)")
strspeed = inputbox ("Koliko brzo zelite da spamujete? (1000 = jednom u sekundi, 100 = 10 po sekundi itd.)", "Coded by Geldregen (Hell Boy)")
strtimeneed = inputbox ("Koliko vam dugo treba vremena da dodjete do mesta gde zelite da spamujete?", "Coded by Geldregen (Hell Boy)")

If not isnumeric (strtimes & strspeed & strtimeneed) then
msgbox "Nesto si pogresio, probaj ponovo."
wscript.quit
End If
strtimeneed2 = strtimeneed * 1000
do
msgbox "Vi imate " & strtimeneed & " sekunde/i da dodjete do mesta gde zelite da spamujete."
wscript.sleep strtimeneed2
for i=0 to strtimes
shell.sendkeys (strtext & "{enter}")
wscript.sleep strspeed
Next
wscript.sleep strspeed * strtimes / 10
returnvalue=MsgBox ("Zelite li da opet spamujete istu poruku?",36)
If returnvalue=6 Then
Msgbox "U redu, SpamBot se pokrece ponovo"
End If
If returnvalue=7 Then
msgbox "SpamBot se iskljucuje."
wscript.quit
End IF
loop