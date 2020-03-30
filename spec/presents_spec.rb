# Checking according to the example
require './presents_1.rb'

describe 'PresentsSpec' do
  it 'defines new present and counts variants' do
    present = Present.new(10, 25, 15)
    result = present.count_combinations(40)

    expect(result).to eq("Result: 3")
  end
end
