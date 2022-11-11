arr1 = ['test', 123, 1.56, true, false, true]

def sort(arr)
  new_arr = arr.select { |val| (val == true || val == false) }
  new_arr
end
print sort(arr1)
