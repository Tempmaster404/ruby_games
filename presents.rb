# variants of a present
variants = []

p "x?"
x = gets.to_i
p "x: #{x}"

p "y?"
y = gets.to_i
p "y: #{y}"

p "z?"
z = gets.to_i
p "z: #{z}"

arr = [x, y, z]

p "w?"
w = gets.to_i
p "w: #{w}"

all_variants = (2..arr.count).flat_map { |size| arr.combination(size).to_a }
all_variants.each { |v| variants.push v if v.sum <= w }
puts "Result: #{variants.count}"
