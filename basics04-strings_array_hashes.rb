#--String--
#Textove retezce v jazyce Ruby mohou byt uzavrene jak v jednoduchych, tak dvojitych uvozovkach.
#myString = 'aloha'
#myString = "aloha"
nameof_position = "specialist" # deklarace promenne "nameof_position" typu string
puts nameof_position  #vypise na obrazovku "specialist"
#k ruznym castem retezce lze pristupovat pomoci hranatych zavorek, do kterych se uvede cast,
#se kterou chceme dale pracovat
#puts myString[0,2] #vypise prvni a treti znak stringu
#puts myString[0..3]  #vypise prvni az ctvrty znak retezce
puts nameof_position[1..nameof_position.length] #na obrazovku vypise "pecialist"

#-Slucovani-
#Jednou z nemala vyhod Ruby je moznost skladat string z nekolika ruznych stringu.
#string = "string1" + " string2" + " string3" + " string4"
#puts string - vypise "string1 string2 string3 string4"
#string = "string" "string2" "string3"
#string = "string".concat("string2").concat("string3")

#-Zmrazeni-
#Dalsi zajimavou funkci je freeze, ktera zakaze dalsi modifikace dane promenne typu string
#string.freeze - od tehle casti kodu nelze promennou "string" dale modifikovat

#-Porovnavani-
#Jako i jine datove typy lze textove retezce komparovat (porovnavat)
puts "mike" == "mike" #vypise "true" na obrazovku
puts "mike" == "emik" #vypise "false" na obrazovku
puts "mike".eql? "mike" #vypise "true" na obrazovku
puts "mike".casecmp "Mike" #vypise "0" - je obsazeno ve vyrazu (1 = neni obsazeno)
