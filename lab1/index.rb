array = [ 4, 3, 2, -6, 5, -6, 8, 6, -3, 8, -1 ]

# 1)Дано цілочисельний масив. Перетворити його, вставивши перед кожним додатним елементом нульовий елемент.
result = array.flat_map { |element|
  if element > 0
    [ 0, element ]
  else
    element
  end
}
puts "   Result 1:"
puts result.inspect
puts " - - - - - - - "

# 2)Дано цілочисельний масив. Перетворити його, вставивши перед кожним від'ємним елементом нульовий елемент.
result = array.flat_map { |element|
  if element < 0
    [ 0, element ]
  else
    element
  end
}
puts "   Result 2:"
puts result.inspect
puts " - - - - - - - "

# 3)Дано цілочисельний масив. Перетворити його, вставивши після кожного додатного елемента нульовий елемент.
result = array.flat_map { |element|
  if element > 0
    [ element, 0 ]
  else
    element
  end
}
puts "   Result 3:"
puts result.inspect
puts " - - - - - - - "

# 4)Дано цілочисельний масив. Перетворити його, вставивши після кожного від'ємного елемента нульовий елемент.
result = array.flat_map { |element|
  if element < 0
    [ element, 0 ]
  else
    element
  end
}
puts "   Result 4:"
puts result.inspect
puts " - - - - - - - "

# 5)Дано цілочисельний масив. Упорядкувати його за зростанням.
result = array.sort
puts "   Result 5:"
puts result.inspect
puts " - - - - - - - "

# 6)Дано цілочисельний масив. Упорядкувати його за спаданням.
result = array.sort.reverse
puts "   Result 6:"
puts result.inspect
puts " - - - - - - - "

# 7)Дано цілочисельний масив. Вивести індекси масиву в тому порядку, в якому відповідні їм елементи утворюють спадну послідовність.
deepArray = array.each_with_index.map { |element, index| [ index,  element] }
sortedDeepArray = deepArray.sort { |a, b| a[1] > b[1] ? -1 : (a[1] < b[1] ? 1 : 0) }
result = sortedDeepArray.map { |element| element[0] }
puts "   Result 7:"
puts result.inspect
puts " - - - - - - - "

# 8)Дано цілочисельний масив. Вивести індекси масиву в тому порядку, в якому відповідні їм елементи утворюють зростаючу послідовність.
deepArray = array.each_with_index.map { |element, index| [ index,  element] }
sortedDeepArray = deepArray.sort { |a, b| a[1] > b[1] ? 1 : (a[1] < b[1] ? -1 : 0) }
result = sortedDeepArray.map { |element| element[0] }
puts "   Result 8:"
puts result.inspect
puts " - - - - - - - "

# 9)Дано цілочисельний масив. Знайти індекс мінімального елемента.
result = array.find_index(array.min())
puts "   Result 9:"
puts result
puts " - - - - - - - "

# 10)Дано цілочисельний масив. Знайти індекс максимального елемента.
result = array.find_index(array.max())
puts "   Result 10:"
puts result
puts " - - - - - - - "

# 11)Дано цілочисельний масив. Знайти індекс першого мінімального елемента.
result = array.find_index(array.min())
puts "   Result 11:"
puts result
puts " - - - - - - - "

# 12)Дано цілочисельний масив. Знайти індекс першого максимального елемента.
result = array.find_index(array.max())
puts "   Result 12:"
puts result
puts " - - - - - - - "

# 13)Дано цілочисельний масив. Знайти індекс останнього мінімального елемента.
result = array.reverse.find_index(array.min())
puts "   Result 13:"
puts array.length - result - 1
puts " - - - - - - - "

# 14)Дано цілочисельний масив. Знайти індекс останнього максимального елемента.
result = array.reverse.find_index(array.max())
puts "   Result 14:"
puts array.length - result - 1
puts " - - - - - - - "

# 15)Дано цілочисельний масив. Знайти кількість мінімальних елементів.
result = array.count(array.min())
puts "   Result 14:"
puts array.length - result - 1
puts " - - - - - - - "
