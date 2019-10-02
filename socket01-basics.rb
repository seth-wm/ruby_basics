#Vytvareni a prace se socketem
#Socket - konecny bod v sitoven komunikacnim kanalu
#Komunikace klient-server - komunikace na lokalni stanici, ci na rozdilnych zarizenich
#Typy soketu
# ->TCP socket
# ->UDP socket
# ->UNIX socket
#Dve urovne socketu - vysoka a nizka (h&l)
# ->pristup "low level" umoznuje praci se sockety podporovanymi danym systemem.
#   ->umoznuje implementaci protokolu bez pripojeni i s pripojenim
# ->pristup "high level" umoznuje praci na skrz sitove protokoly, jako treba HTTP a FTP

#priklad jednoducheho TCP socketu
require 'socket'  #vklada tridu "socket"

locsrv = TCPServer.open(2233) #vytvori TCP socket na portu "2233"
loop{
  client_acc = locsrv.accept  #objekt "client_acc" jakozto metoda "accept" objektu "server" - akceptace pripojeni k socketu
  client_acc.puts "Welcome to my socket"  #pri pripojeni klienta k socketu posle klientovy zpravu
  client_acc.close  #uzavre socket
  }
 
#priklad jednoducheho TCP klienta
 
require 'socket'  #vklada tridu "socket"

destination_hostname = "localhost"  #deklarace promene obsahujici hostname socketu, ke kteremu se bude pripojovat
destination_port = 2233 #deklarace promenne obsahujici koncovy port

socconn = TCPSocket.open(destination_hostname,destination_port) #objekt "soccon" otevira spojeni se vzdalenym hostem na danem portu
while line = socconn.gets  #cyklus - cte radky prijate od serveru, dokud nedojde k poslednimu
  puts line.chomp #vypis radku prijateho od serveru
end #konec cyklu

soccon.close  #uzavre spojeni se socketem
