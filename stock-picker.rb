def stock_picker arr
  get_index arr
end
def get_profits
  profits = []
  i = 0
  j = 1
  while i < arr.length
    while j < arr.length
      if arr[j] - arr[i] != 0
        profits.push(arr[j] - arr[i])
      else
      end
      j += 1
    end
    j= i + 1
    i+= 1
  end
end
def find_highest_number arr
highest = arr[0]
arr.each do |n|
  if n > highest
    highest = arr[arr.index(n)]
  end
end
highest
end
def get_index arr
  pair_of_days = []
  profits = get_profits
  highest_number = find_highest_number profits
  i = 0
  j = 1
  while i < arr.length
    while j < arr.length
      if arr[j] - arr[i] == highest_number
        pair_of_days.push(i,j)
        break
      end
      j += 1
    end
    j = i + 1
    i+= 1
  end
  pair_of_days
end
