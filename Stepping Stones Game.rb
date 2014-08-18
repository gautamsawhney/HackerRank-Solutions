# Stepping Stones Game

# 1st solution only 3 test cases pass
----------------------------------------

test_cases = gets.chomp.to_i

 test_cases.times do 
   n = gets.to_i
   # q = (n.to_f/2).ceil

  for i in 1..n
    if n == i*(i + 1)/2
      q = "Go On Bob #{i}"
      puts q
      break
    end
  end
  if q != "Go On Bob #{i}"
   puts "Better Luck Next Time"
  end 
 end         



#2nd solution..ALl test cases pass
------------------------------------

 T=gets.to_i
T.times {
    n=gets.to_i
    c=n*2   # = a**2 + a
    r=((-1 + (1+4*c)**0.5)/2).round
    if( r*(r+1) / 2 == n )
        puts "Go On Bob #{r}"
    else
        puts "Better Luck Next Time"
    end
    
    
    }