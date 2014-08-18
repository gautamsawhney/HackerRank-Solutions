 #Reverse Game

# 1st solution passes only for 4 test cases
----------------------------------------------

 test = gets.chomp.to_i


test.times do
   # num = gets.to_i
   # numbered = gets.to_i
   num, numbered = gets.split.map(&:to_i)


  a = []
  elem = 0 
  a << elem

 (num-1).times do
   elem += 1
   a << elem
 end


 len = a.length
 final = []
 w = []

 len.times do 
   if w.length == 0
    q = a.reverse
   else
    q = w.reverse
   end
   
   elem = q.shift
   final << elem
   w = q - [elem]
 end

 puts final.index(numbered)
end




#2nd Solution Passes for all test cases -- Reverse Game
--------------------------------------------------------

 test = gets.chomp.to_i

test.times do
   # num = gets.to_i
   # numbered = gets.to_i
   num, numbered = gets.split.map(&:to_i)


  a = []
  elem = 0 
  a << elem

 (num-1).times do
   elem += 1
   a << elem
 end

u = a.each_slice( (a.size/2.0).round ).to_a
lower = u.first
upper = u.last.reverse.push(0)
final = []

upper.each do |i|
 if i != 0
  final << i
 end 
  lower.each do |b|
    final << b
    lower.shift
    break
  end
end   

puts final.index(numbered)
end 