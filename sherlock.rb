
# a = []

# size_of_array = gets.chomp.to_i

# size_of_array.times do 
#   elem = gets.chomp.to_i
#   a << elem
# end

# p = 1.upto(size_of_array).flat_map { |n| a.combination(n).to_a }

# p.each do |u|

def gcd(a,b)
  a.gcd(b)
end

a = [1,2,3,4]
len = a.length

for i in 0..(len-1)
 l = a.length
 if l % 2 == 0 
  p = gcd(a[i],a[i+1])
  t << p
 end
 a.pop 
end

