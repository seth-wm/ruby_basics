#--Objekt--
#Jak jiz vime, jazyk Ruby je slozeny vicemene pouze z objektu.
#Ukazme si, jak je mozne objekt vytvorit a nasledne s nim pracovat.
#objectName = className.new
actualTime = Time.new() #vytvori objekt "actualTime" tridy "Time"
puts (actualtime) #vypise aktualni cas

#--Trida--
#Trida jest jakymsi souborem metod a promennych, usnadnujici praci s vytvarenim programu.
#Vyhodou je ulozeni metod, ktere vyuzijeme i v dalsich programech - nemusime je znovu vytvaret.
#class className
# code - metody, promenne, komentare,...
#end
class Car #deklarace tridy "Car"
  @@listof_manufacturers = ["Fiat","Skoda","Audi","BMW","Mini","Suzuki"] #deklarace tridni promenne - pole - "listof_manufacturers"
  def print_manufacturer() #metoda "print_manufacturer" a zacatek tela metody
    @my_manufacturer = @@listof_manufacturers[2]  #prirazeni treti hodnoty pole "listof_manufacturers"
    #do instancni promenne "my_manufacturer"
    print("Vyrobce meho vozu: ",@my_manufacturer) #vypise string + hodnotu "Audi" na obrazovku
  end #konec tela metody
end #konec tridy

#--Modul--
#V Ruby je vyznam modulu podobny tride. Modul je kolekce metod a konstant.
#Metody v modulu mohou byt instancni nebo modulove.
#Instancni metody jsou metody v tride, ve ktere je modul zahrnut.
#Modulove metody mohou byt volany bez nutnosti vytvoreni zapouzdrujiciho objektu,
#zatimco instancni metody nemohou.
#Narozdil od trid nelze pomoci modulu vytvaret objekty nebo podtridy, navic nemuze vzniknout zadna hiearchie dedicnosti modulu.
#module nameof_module
# statementx
# statementy
# ...
#end
module Plc  #deklarace modulu "Plc" a zacatek jeho tela
  @@ram = 24  #promenna "ram"
  @@ram_unit = "kB" #promenna "ram_unit"
  def Plc.concat_ram()  #metoda "concat_ram"
    @@ramtot = @@ram.to_s+@@ram_unit  #pretypuje promennou "ram" na string a nasledne secte se stringem "ram_unit"
    print @@ramtot  #vypise na obrazovku "24kB"
  end #konec tela metody
end #konec tela modulu
