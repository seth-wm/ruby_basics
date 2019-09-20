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
