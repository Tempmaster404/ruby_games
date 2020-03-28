# Defining new Class
class SecretaryTask

  def initialize(n)
    @n = n.to_i
  end

  def counts_minimal_time(x, y)
    count = []
    values = []

    if x != y
      min_value = [x, y].min
      max_value = [x, y].max
  
      (1..@n).each do |obj|
        number = @n - obj
        count.push obj*min_value - number*max_value
      end

      count.each_with_index { |c, i| values.push i+1 if c >= 0 }  
      p values.first * min_value
    else
      p n * x / 2
    end
  end
end

# Checking according to the example
secretary_task = SecretaryTask.new(5)
secretary_task.counts_minimal_time(1, 2)
