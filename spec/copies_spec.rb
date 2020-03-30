# Checking according to the example
require './copies_1.rb'

describe 'CopiesSpec' do
  it 'defines new copies and counts variants' do
    secretary_task = SecretaryTask.new(5)
    result = secretary_task.counts_minimal_time(1, 2)
  
    expect(result).to eq("Result: 4")
  end

  it 'defines new copies and counts variants when time is identic' do
    secretary_task = SecretaryTask.new(4)
    result = secretary_task.counts_minimal_time(1, 1)
  
    expect(result).to eq("Result: 3")
  end
end
