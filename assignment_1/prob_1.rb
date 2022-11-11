arr = ['abs', 1, 1.0, true, false]

puts arr.at(0)    # abs
puts arr.first    # abs
puts arr.last     # false
print arr.push('mango')     # ["abs", 1, 1.0, true, false, "mango"]
puts
print arr << 22             # ["abs", 1, 1.0, true, false, "mango", 22]
puts
print arr.unshift('color') # ["color", "abs", 1, 1.0, true, false, "mango", 22]
puts

print arr.insert(2, 'age') # ["color", "abs", "age", 1, 1.0, true, false, "mango", 22]
puts
print arr.take(4)    # ["color", "abs", "age", 1]

puts

print arr.drop(4)    # [1.0, true, false, "mango", 22]
puts
puts arr.pop # 22

puts arr.shift # color

arr.delete('age')
print arr # ["abs", 1, 1.0, true, false, "mango"]

arr.push(true, true, 1)
puts

print arr.uniq    # ["abs", 1, 1.0, true, false, "mango"]
