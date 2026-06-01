pico-8 cartridge // http://www.pico-8.com
version 43
__lua__
function _draw()
		cls()
		print("point: ", 20, 4)
		print(korrekte, 54, 4)
  print("du skal fortaelle hvad ", 20, 20)
  print(tal1, 20, 28)
  print(" + ", 20, 36)
  print(tal2, 20, 44)
  print("=", 20, 52)
  
  korrekt=rnd(3)
  
 -- print("⬆️", 20, 60)
  resultater.⬆️ = tal1+tal2
  resultater.⬇️ = tal1 + falsktal1
  resultater.➡️ = tal2 + falsktal1
  resultater.⬅️ = falsktal1 + falsktal2 -1
 -- print(tal1+tal2, 32, 60)
 -- print("⬇️", 20, 68)
  --print(falsktal1+tal1, 32, 68)


	 offsetx=0
	 offsety=0
	 for knap,resultat in pairs(resultater) do
	 	print(knap, 20+offsetx, 60+offsety)
	 	print(resultat, 20+offsetx+16, 60+offsety)
	 	offsety += 8
	 end
end


function _update()
 if btnp(⬆️) then
  if resultater.⬆️ == tal1+tal2 then
   korrekte+=1
   lavny=true
  end
 end
 if btnp(⬅️) then
  if resultater.⬅️ == tal1+tal2 then
   korrekte+=1
   lavny=true
  end
 end
 if btnp(⬇️) then
  if resultater.⬇️ == tal1+tal2 then
   korrekte+=1
   lavny=true
  end
 end
 if btnp(➡️) then
  if resultater.➡️ == tal1+tal2 then
   korrekte+=1
   lavny=true
  end
 end
 if lavny or time() % 17 == 1 then
 	tal1=ceil(rnd(500))
 	tal2=flr(rnd(500))
 	
 	falsktal1=ceil(rnd(20))
 	falsktal2=ceil(rnd(20))
 	falsktal3=ceil(rnd(20))
 	falsktal4=flr(rnd(20))
  lavny=false
 end

end


function _init()
 korrekte=0
 tal1=0
 tal2=0
 falsktal1=10
 falsktal2=30
 falsktal3=40
 falsktal4=11
 lavny=true
 resultater={
 	⬆️=0,
 	⬇️=0,
 	⬅️=0,
 	➡️=0
 }
end
__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
