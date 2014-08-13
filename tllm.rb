
#The Love-Letter Mystery
------------------------


nlines = $stdin.readline.to_i
$stdin.take(nlines).each do |line|
  numbers = line.strip.chars.map(&:ord)
  pairs = numbers.zip(numbers.reverse).take(numbers.size / 2)
  puts(pairs.map { |n1, n2| (n1 - n2).abs }.reduce(0, :+))
end





  