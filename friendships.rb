# find friends count for certain persone
def friends_indexes(array)
  friends = array.map.with_index do |element,index|
    index if element == 1
  end.compact
end

def friends_and_subfriends_count(matrix, n, s)
  friends = friends_indexes matrix[s]

  friends_of_friends = friends.inject([]) do |arr, index|
    arr += friends_indexes matrix[index]
  end

  all_friends = (friends + friends_of_friends).uniq
  all_friends.delete(s)
  all_friends.count
end
