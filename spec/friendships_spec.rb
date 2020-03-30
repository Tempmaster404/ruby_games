# Checking according to the example
require './friendships.rb'

describe 'FriendshipsSpec' do
  it 'shows result according to the example 1' do
    matrix = [[0, 1, 0],
             [1, 0, 1],
             [0, 1, 0]]

    n = 3
    s = 1
  
    result = friends_and_subfriends_count(matrix, n, s)
    expect(result).to eq(2)
  end

  it 'shows result according to the example 2' do
    matrix = [[0, 0, 0, 0, 0], 
             [0, 0, 1, 0, 0],
             [0, 1, 0, 0, 1],
             [0, 0, 0, 0, 1],
             [0, 0, 1, 1, 0]]

    n = 5
    s = 2

    result = friends_and_subfriends_count(matrix, n, s)
    expect(result).to eq(3)
  end
end
