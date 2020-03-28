# min time to copy document
x = gets.to_i
y = gets.to_i
n = gets.to_i

count = []
values = []

if x != y
  min_value = [x, y].min
  max_value = [x, y].max
  
  (1..n).each do |obj|
    number = n - obj
    count.push obj*min_value - number*max_value
  end
  count.each_with_index { |c, i| values.push i+1 if c >= 0 }  
  p values.first * min_value
else
  p n * x / 2
end
