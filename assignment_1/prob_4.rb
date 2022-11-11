ar1= [1, 2, 3, 4, 5]
ar2= [9, 8, 5, 4, 3]


def common(arr1,arr2)
  arr1 & arr2
end

# puts common(A,B)

#2_nd solution

def common_2(arr1,arr2)
  arr1.sort!
  arr2.sort!
  res = []
  while !arr1.empty? && !arr2.empty?
    if arr1.first < arr2.first
      arr1.shift
    elsif arr1.first > arr2.first
      arr2.shift
    else
      res << arr1.shift if res.last != arr1.shift || res.empty?
      arr2.shift
    end
  end
  res
end

# print common_2(ar1,ar2)

# 3rd solution

def common_3(arr1 , arr2)
  set1 = Set.new(arr1)
  set2 = Set.new()
  arr2.each do |val|
    set2.add(val) if set1.include?(val)
  end
  set2.to_a
end

print common_3(ar1,ar2)
