
 #Game of Thrones - I

# string = $stdin.gets.chomp 

# found = 0
# w = string.chars.to_a.permutation.map(&:join).uniq.each do |anagram|
#        puts anagram
#      end

#      w.each do |i|
      
#       if i == i.reverse
#       	found = 1
#       end
#      end 

# if found == 1
#     puts "YES"
# else
#     puts "NO"
# end



def palindrome?(string)
  hash = {}

  string.each_char do |c|
    if hash[c] == nil
      hash[c] = 1
    else
      hash[c] += 1
    end
  end

  odd_chars = 0

  hash.each do |k,v|
    unless v % 2 == 0
      odd_chars += 1
      if odd_chars >= 2
        puts 'NO'
        return
      end
    end
  end

  puts 'YES'
end

string = $stdin.gets.chomp

palindrome?(string)






