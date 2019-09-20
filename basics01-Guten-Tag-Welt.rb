#--Nejznamejsi progam v galaxii - HelloWorld--
puts "Guten Tag, Welt"
#prikaz puts - PUT String - vypise textovy retezec na obrazovku (se zalomenim radku)
#puts [string]

#print -  vypiste text/promennou na obrazovku
number = 20
print "Je mi ",number," let. Jsem extra mlady"
#jednotlive objekty je potreba oddelit carkou, v nasem pripade [string],[integer],[string]
#nezalamuje radek automaticky - escape char \n!
print "Ahoj"
print "CocaCola"
#prikazy vypisi AhojCocaCola
print "Ahoj\n"
print "CocaCola"
#prikazy vypisi:
#Ahoj
#CocaCola

#--Operatory--
#UNARNI
#! - negace
puts (!true) #vypise "false" na obrazovku
#~ - bitovy doplnek
puts (~4) #vypise "-5"
#+ - unarni plus

#ARITMETICKE
#+ - soucet
puts (1+3) #vypise soucet - "4"
#- - rozdil
puts (3-2) #vypise rozdil - "1"
#* - soucin
puts (5*5) #vypise soucin - "25"
#/ - podil
puts (40/2) #vypise podil - "20"
#** - exponent
puts (4**2) #pravy operand ("2") je exponentem leveho operandu ("4") - ctyri na druhou - vypise "16"
#% - zbytek po deleni
puts (25%4) #vypise zbytek po deleni - vyraz "25/4" = "6", zbytek "1" - vypise "1"

#BITOVE
#& - AND
#| - OR
#<< - operator razeni doleva
#>> - operator razeni doprava
#^ - XOR
#~ - doplnkovy operator

#LOGICE
#&& - logicky SOUCIN AND
#|| - logicky SOUCET OR

#TERNARNI OPERATOR
#?: - podmineny vyraz
puts(2<5 ? 5:2) #vypise "5"

#PRIRAROVACI
#= - jednoduchy prirazovaci operator
exp = TRUE
puts(exp) #vypise "true"
#+= souctovy
var = 2
puts (var += 3) #vypise "5" - obdoba var=var+3
#-= - rozdilovy
#*= - soucinovy
#/= - podilovy
#%= - modulovy (zbytkovy)
#**= - exponencialni

#POROVNAVACI
#== - je rovno
#!= - neni rovno
#> - levy operator je vetsi nez pravy
#< - levy operator je mensi nez pravy
#>= - levy operator je vetsi nez pravy nebo roven pravemu
#<= - levy operator je mensi nez pravy nebo roven pravemu
#<=> - kombinovany srovnavaci operator (mensi/vetsi/rovno)
#.eql? - dotaz na rovnost a typ operatoru
#equal? - dotazuje se ID daneho objektu

#ROZSAHOVE
#.. - rozsah vcetne posledni hodnoty
#... - rozsah bez posledni hodnoty

#--Promenne--
#lokalni
number = 3 #deklarace promenne "number" s hodnotou "3"
#tridni - pouzivaji se ve tridach, deklarace s dvema zavinaci pred nazvem promenne
#pristupne odkudkoliv ve tride
@@numof_cows = 234 #deklarace promenne "numof_cows" s hodnotou "234" v dane tride
#instanctni - pouzivane ve tridach, deklarace s jednim zavinacem pred zacatkem promenne
#pristoune pouze v dane casti tridy, kde byly deklarovane
def say_hello()
  @hello_cz = "ahoj"
  puts(@hello_cz)
end
#promenna "hello_cz" je pristupna pouze v metode "say_hello" dane tridy
#globalni - prisupne odkudkoliv v programu, deklarace s dolarem pred nazvem promenne
$author = "YourWhiteMike" #deklarace globalni promenne "author", ke ktere lze pristupovat odkudkoliv v programu

#--Datove typy--
#V jazyce Ruby neprobiha deklarace promennych s uvadenim konktretniho datoveho typu,
#nicmene i zde se datove typy deli na:
#cisla
#textove retezce (stringy)
#symboly
#hashe
#pole
#booly (boolean)

#cisla
#lze provadet kuprikladu aritmeticke operace
#trida fixnum - normalni cisla - 1, 20, 255, 500,...
#trida bignum - velka cisla - 11111111, 9999999993,...
#trida float - cisla s desetinnou carkou - 23,41, 1,25,...
#trida complex - komplexni (imaginarni) cisla - 4+2i
#trida rational - frakcni cisla - 3/4, 5/3,...
#trida bigdecimal - presna desetinna cisla - 4.0, 2.3,...

#stringy
#lze s nimi provadet ruzne operace - slucovani, parsovani, zjistovani delky retezce etc.

#symboly
#podobne stringum, deklarace s dvojteckou pred zacatkem vyrazu - :symbol.class_id

#hashe
#prirazuji dane hodnoty danym klicum, a to pomoci rovnitka a zavorky "vetsi, nez" (=>)
#prirazeni: KLIC => HODNOTA, kde klic = string
front = {"czech_rep" => "prague","england" => "london"}
puts front["czech_rep"] #vypise hodnotu "prague" na obrazovku

#pole
#ukladaji data nebo seznam dat, ktere mohou byt jakehokoliv datoveho typu.
#jednotlivym prvkum pole je prirazen index (0-n, v zavislosti na poctu prvku pole),
#index prvku zavisi na jeho poradi
listof_nums = [20,25,195,1]
puts listof_nums[0] #na obrazovku vypise "20" - prvni prvek pole "listof_nums"
puts listof_nums[2] #na obrazovku vypise "195" - treti prvek pole "listof_nums"

