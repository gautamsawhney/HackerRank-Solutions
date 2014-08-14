


#IsFibo

def perfect_square(x)
  s = Math.sqrt(x).to_i
  if(s*s == x)
    return true
  else
    return false
  end    
end

def fibonaci(n)
 w = (5*(n*n).to_i) + 4
 e = (5*(n*n).to_i) -4

 q = perfect_square(w) || perfect_square(e)
 if q == true
  puts "IsFibo"
 else
  puts "IsNotFibo"
 end
end

test_cases = gets.chomp.to_i


test_cases.times do
  num = gets.chomp.to_i
  fibonaci(num)
end
