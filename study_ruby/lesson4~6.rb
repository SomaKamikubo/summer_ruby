puts "----unless-----"
flag=false
unless flag then
    puts("falseなら実行")
end

if !flag then
    puts("falseでも実行できる")
end

puts "-----修飾子----"
ary = ["foo","bar","baz"]
ary.each do |i|
    p i if i =="bar"
end

puts "-----case----"
satoko="amatou"
case satoko
when "karatou" then
    puts("辛いものを食べる")
when "amatou" then
    puts("甘いものを食べる")
end

puts "-----until----"
num=3
until num > 5
    puts("falseで動くんだなあ")
    num +=1
end

puts "-----each----"
ary = [[1,2,3],
[4,5,6],
[7,8,9]]
ary.each do |a,b,c|
    p a,b,c
end

hash = {:foo => 1, :bar => 2, :baz => 3}
hash.each do |key,value|
    puts "key: #{key},value: #{value}"
end

puts "-----times----"
sum = 0
10.times { sum += 1 }
p sum

puts "-----for----"
for i in ary
    p i
end

puts "-----loop----"
count=0
loop {
    if count == 3
        break
    end
    puts("ループ中")
    count +=1
}


puts "-----next---"
[1, 2, 3].each do |i|
    if i == 2
      next
    end
    p i
  end

puts "-----redo---"
  a=0
  [1, 2, 3].each do |i|
    p i
    if i == 3 && a==0 then
      a = a + 1
      redo
    end
  end

puts "-----引数にハッシュ---"
def cubage(args)
    # デフォルト値の設定
    x = args[:x] || 10
    y = args[:y] || 10
    h = args[:h] || 10
    return x * y * h
end
p cubage(:h => 100)


puts "----yield---"
def show
    puts "Enjoy!"
end
show { puts "Programming!" } 
   
def show
    puts "Enjoy!"
    yield
end
show { puts "Programming!" } 

def double
    yield
    yield
end
double { puts "Two" }

def foo
    yield "Hello!"
end
foo {|x| puts x}

puts "----メソッドの名前の変更---"
def hello
    puts("Hello!")
end
alias new_hello hello
new_hello

