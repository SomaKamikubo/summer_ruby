ary = Array.new(size = 3, val = "Ruby")
p ary  #=> []
ary = Array.new(3)
p ary  #=> []


ary = [1, 2, 3]
ary[7] = 10
p ary        #=> [1, 2, 3, nil, nil, nil, nil, 10]

ary = ["Ruby", "HTML", "JavaScript", "Rails"]
ary.each { |item|
  # (A)
  output = item.downcase
  p output
  # (B)
}
p ary.collect { |item| item.upcase }


ary = ["Ruby", "HTML", "JavaScript", "Rails"]
ary.each_with_index { |item, index| p item, index }

puts("----宇宙船演算子------")

p 1 <=> 2  #=> -1
p 1 <=> 1  #=> 0
p 2 <=> 1  #=> 1

ary = [100, 50, 5, 10, 1]
p ary.sort

puts("----ハッシュ------")
hash = {:key1 => 1, :key2 => 2, :key3 => 3}
p hash.include?(:key1)   #=> true
p hash.include?(:key10)  #=> false
p hash.value?(1)   #=> true
p hash.value?(10)  #=> false

hash.each do |item|
    p item
  end