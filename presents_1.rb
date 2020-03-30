# Defining new Class
class Present

  def initialize(x, y, z)
    @x = x.to_i
    @y = y.to_i
    @z = z.to_i
  end

  def count_combinations(w)
    variants = []
    arr = [@x, @y, @z]
    all_variants = (2..arr.count).flat_map { |size| arr.combination(size).to_a }
    all_variants.each { |v| variants.push v if v.sum <= w }
    p "Result: #{variants.count}"
  end

end
