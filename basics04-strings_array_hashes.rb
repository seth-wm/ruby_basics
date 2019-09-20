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

#--Pole--
#V jazyce Ruby lze pole deklarovat hned nekolika zpusoby
#myArray = [2, 3, 4] - deklarace pole + jeho hodnot
#myArray = Array.new - deklarace pole vytvorenim objektu tridy "Array" - bez parametru
#myArray = Array.new(8) - deklarace pole vytvorenim objektu tridy "Array" - s urcenim poctu prvku

#Velikost pole zjistime dvema zpusoby - metodou "size" nebo "length"
#puts myArray.size - vypise velikost pole "myArray"na obrazovku - 10
#puts myArray.length - vypise velikost pole "myArray"na obrazovku - 10

#Dalsi z moznosti deklarace pole
myArray = Array(1...10) #deklarace pole "myArray" s poctem 10 prvku - cisla 1 az 10
puts "#{myArray}" # vypise [1,2,3,4,5,6,7,8,9] na obrazovku

#Pristupovani k prvkum pole
values = [12,18,65,32,20]
puts values[0]  #vypise prvni prvek pole "values" - "12"
puts values[-2] #vypise druhy prvek OD KONCE pole "values" - "32"
puts values[1,2]  #vypise druhy a treti prvek pole "values" - "18" a "65"
