#--cycles--
#-if-else-
#if(condition)
#	code
#end
#OR
#if(condition1)
#	code
#elsif(condition2)
#	code
#else
#	code
#end
puts "--IF-ELSE--\n"
puts "Zadej cislo <>=1..."
var = gets.chomp.to_i
if var > 1
	print "Your number is ",var,", and its bigger than 1.\n"
elsif var == 1
	print "Your number is 1\next"
else
	print "Your number is ",var,", and its smaller than 1.\n"
end

#-?-
puts "--?--\n"
puts "Pozdrav s malymi pismeny..."
var = gets.chomp
exp = (var == "ahoj" ? true : false)
puts exp

#-for-
#for var [, var ...] in expression do
#	code in cycle
#end
puts "--FOR--'\n"
var = ["AUDI","VW","SKODA","FIAT","SUZUKI"]
for i in var do
	puts i
end

#-while-
#while conditional [do]
#	code
#end
puts "--WHILE--\n"
var = 10
var1 = 5
while var1<=var
	puts var1	
	var1 += 1
end

#-do-
#loop do
#	code
#	break if booleanExpression
#end
puts "--DO--\n"
loop do
	puts "Repeat? (y/n)"
	answ = gets.chomp
	if answ!="y"
		break
	end
end

#-until-
#until conditional
#	code
#end
puts "--UNTIL--\n"
var = 1
until var == 10
	print var*10, "\n"
	var = var+1
end

#-next-
#next
puts "--NEXT--\n"
for var in 5...14
	if var == 8
		next 		#exclude 8
	end
	puts var
end

#-redo-
#redo
puts "--REDO--\n"
var = 0
while(var<10)
	puts var
	var += 1
		redo if var == 10
end
