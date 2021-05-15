type Edad= Int
type Felicidonios= Int
type Suenios=Int
type Nombre=String
type Habilidades=[String]
type Persona=(Edad,Suenios,Nombre,Felicidonios,Habilidades)

laura :: Persona
laura=(21,3,"Laura Hernandez",130,["Jugar al futbol","Mecanica","Tocar la bateria"])--EJEMPLO DE UNA PERSONA

satisfaccion::(Int,Int,String,Int,[String])->Int
satisfaccion (a,b,_,c,_)
    | c > 100 =c*a
    | c>50 && c<=100 =b*c
    | otherwise=div c 2

ambicion (a,b,_,c,_)
    | c>100 =c*b
    | c>50 && c<=100= a*b
    | otherwise= b*2

nombreLargo (_,_,a,_,_)=((>10).length) a

suertuda=even.(*3).satisfaccion

nombreLindo (_,_,a,_,_)= ((=='a').last) a

recibirse::String->Persona->Persona
recibirse carrera (a,b,c,d,e)=(a,b,c,d+1000,e ++ [carrera])

viajar ciudad (a,b,c,d,e)
    |ciudad=="bonus"=(a,b,c,d+100,e)
    |otherwise=(a+1,b,c,d+100*length(ciudad),e)

enamorarse (a,b,c,d,e) (_,_,_,f,_)= (a,b,c,d+f,e)

comboPerfecto::Persona->Persona
comboPerfecto persona=viajar "bonus" (recibirse "Medicina" (viajar "Paris" (viajar "Berazategui" persona)))

queTodoSigaIgual= id
