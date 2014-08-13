test_cases = gets.chomp.to_i

test_cases.times do
  years = gets.chomp
  sum = 1
  years.to_i.times do |i|
    if i % 2 == 0
      sum *= 2
    else
      sum += 1
    end
  end
  puts sum
end