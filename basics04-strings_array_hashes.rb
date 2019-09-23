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
#Dalsi moznosti pristupovani k prvkum je pomoci metody "at"
puts values.at(2) #vypise treti prvek pole

#Fetch
#metoda pro urceni vychozi hodnoty erroru pri urceni rozsahu pole
values = [12,18,65,32,20]
puts values.fetch(20) #vypise defaultni chybu prekladace - pole ma 5 prvku
puts values.fetch(20, "co zkousis??") #vypise hlasku "co zkousis??", nebot pole ma pouze 5 prvku

#First & Last
#metody pro vypsani prvniho (first) a posledniho (last) prvku daneho pole
values = [12,18,65,32,20]
puts values.first #vypise hodnotu prvniho prvku pole - "12"
puts values.last  #vypise hodnotu posledniho prvku pole - "20"

#Take
#metoda vypisujici prvnich n prvku pole
values = [12,18,65,32,20]
puts values.take(3) #vypise prvni 3 hodnoty pole "values" - "12", "18", "65"

#Drop
#metoda vypisujici prvky, ktere nasleduji po n preskocenych prvcich
values = [12,18,65,32,20]
puts values.drop(4) #vypise paty prvek pole - "20" - prvni 4 byly preskoceny - vyrazeny z vyberu

#Pridavani prvku do pole
#lze provadet metodami push/<<, unshift nebo insert
#push
values = [12,18,65,32,20]
puts values.push(21) #vypise vsechny prvky pole + pridany prvek "21"
#unshift
values = [12,18,65,32,20]
puts values.unshift(69) #vypise vsechny prvky pole + prida prvek "69" na zacatek pole
#insert
values = [12,18,65,32,20]
puts values.insert(15,2) # vypise cele pole + prida prvek "15" na pozici 2

#Odebirani prvku z pole
#metody pop, shift, delete a uniq
#pop
values = [12,18,65,32,20]
puts values.pop #odebere posledni prvek z pole - "20" a vypise jej
#shift
values = [12,18,65,32,20]
puts values.shift #odebere prvni prvek z pole - "12" a vypise jej
#delete
values = [12,18,65,32,20]
puts values.delete(12)  #smaze prvek "12" z pole "values" a vypise jej
#uniq
values = [12,18,65,32,20,12]
puts values.uniq  #vyhleda duplikatni prvky v poli a duplikat smaze, nasledne vypise zbyle hodnoty pole "values"

#--Hash--
#V jazyku Ruby jsou hashe kolekcemi unikatnich klicu s prirazenimi hodnotami.
#Podobne jako pole, maji hashe indexy policek, s rozdilem, ze indexem (klicem) hashe
#muze byt jakykoliv typ objektu.
#Hash lze nazvat take jako asociativni pole, slovnik nebo mapu.
#Pokud je k hashi pristupovano klicem, ktery neexistuje, volaci metoda vrati hodnotu typu nil.
#Mame dva zpusoby deklarace:
#nameOfHash = {"key1" => "value1","key2" => "value2","key3" => "value3"}
#nameOfHash = {key1: 'value1',key2: 'value2',key3: 'value3'}

gods = {  #deklarace asociativniho pole "gods"
  "horus" => "egypt", #klic "horus" obsahujici hodnotu "egypt"
  "cronus" => "greece", #klic "cronus" obsahujici hodnotu "greece"
  "moloc" => "canaanine"  #klic "moloc" obsahujici hodnotu "canaanine"
  }
puts gods['cronus'] #vypise "greece" na obrazovku

#Pridani prvku do hashe
#nameOfHash['nameOfKey']="valueOfKey"
gods['svarog'] = "slovenia" #prida klic "svarog" s hodnotou "slovenia" do hashe "gods"
gods.each do |key,value|  #zacatek tela cyklu do, ktery pracuje s klicem a hodnotou hashe "gods"
  puts "#{key} was the god of #{value}" #slouci klic a hodnotu se stringem -> "cronus was the god of greece"
end #konec cyklu do

#Metody hashe
#verejne tridnu metody
#Hash[obj] - vytvori novy hash s danymi objekty
#new(obj) - navrati novy prazdny hash
#try_convert(obj) - pokusi se konvertovat objekt "obj" na hash
#verejne instancni metody
#hash1==hash2 - porovna, zda jsou dva hashe shodne -> pokud obsahuji shodny klic a hodnotu
#hash1[key] - nacte hodnotu prislusneho klice "key" z hashe "hash1"
#hash[key] = val - klici "key" priradi novou hodnotu "val"
#assoc(obj) - porovna "obj" v hashi
#clear - odstrani vsechny klice s hodnotami v hashi
#compare_by_identity - porovna klice dle jejich identity
#compare_by_identity? - vrati hodnotu "true", pokud hash porovna sve klice dle identity
#default(key=nil) - vrati defaultni hodnotu
#default = obj - nastavi defaultni hodnotu
#delete(key) - smaze klic a jeho hodnotu z hashe
#each - blokove volani (1x) kazdeho klice v hashi
#empty? - vrati hodnotu "true" pokud hash neobsahuje jediny klic s hodnotou (je prazdny)
#eql>hash2 - vrati "true" pokud oba hashe obsahuji totozne klice a hodnoty
#fetch(key[,default]) - vrati hodnotu zadaneho klice z hashe
#has_key?(key) - vrati "true" pokud je klic "key" obsazen v hashi
#has_value?(val) - vrati "true" pokud je hodnota "val" obsazena v nekterem klici daneho hashe
#include?(key) - vrati hodnotu "true" pokud je klic obsazen v hashi
#to_s/inspect - vrati obsah hashe jako textovy retezec
