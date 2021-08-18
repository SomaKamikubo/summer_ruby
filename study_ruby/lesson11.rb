puts("-----例外処理------")
month = ["Jan","Feb","Mar","Apr"]
wrong_number = [0,1,"2",3]
wrong_number.each do |num|
    begin
        puts month[num]
    rescue => ex
        puts ex.message
    end
end


puts("-----メソッドに例外処理を組み込む------")
def foo(x, y)
    result = x + y
    return result
  rescue => ex
    return x, y
  ensure
    if result
      puts "xとyを足した結果は、#{result}でした"
    else
      puts "xとyは足せませんでした"
    end
end
   
foo(10, 20)
foo(10, "a")


puts("-----特定の例外処理をする------")
begin
    require "file_not_exist"
  rescue LoadError
    puts("file_not_exist.rbというファイルは見つかりませんでした")
end

puts("-----数値リテラル------")
p 123     #=> 123
p 0123    #=> 83
p 0xFF    #=> 255 
p 0b1111  #=> 15

p ?a      #=> 97
p ?\t      #=> 9
p ?\C-a    #=> 1
p 1.23e4   #=> 12300.0
p 1.23e-4  #=> 0.000123

p rand(10)

puts("-----演算------")
ans = 10.divmod(3)
p ans  #=> [3, 1]
p 4%3

require 'bigdecimal'
a = BigDecimal("0.1") + BigDecimal("0.2")
b = BigDecimal("0.3")
p a == b  #=> true


puts("-----数え上げ------")
5.times {|i| puts i }

10.upto(15) {|i| puts i}

15.downto(10) {|i| puts i}

10.step(2, -2) {|i| puts i}



puts("-----出力------")
puts( "This is Ruby Language.\n\tCreated by Y.Matsumoto.")
puts( "現在時刻は、#{Time.now.strftime("%Y/%m/%d %H:%M:%S")}です。")
puts(%q("Ruby", "HTML", "JavaScript", "Rails"))

foo = <<EOS
foo
bar
baz
EOS
p foo
 
# メソッドに渡す
print <<EOS
foo
bar
baz
EOS

foo = 1 + 2
print <<'EOS'
変換をおこなわない\n
#{foo}
EOS
 
print <<"EOS"
変換をおこなう\n
#{foo}
EOS

str = <<EOS.upcase
Ruby
is
object-oriented
programming
language.
EOS
print str


p "Ruby " + " on " + " Rails"
a = "foo"
a << "bar"
p a

str = "foo, bar, baz"
ary = str.split(",")
p ary  #=> ["foo", "bar", "baz"]

puts("-----正規表現------")
reg = %r(Ruby) 
str = <<EOS
Ruby is object-oriented programming language.
EOS
str[reg] = "Ruby1.8"
p str 

str = "HTML is the predominant markup language for web pages."
str.sub!(/HTML/, "Hyper Text Markup Language")
p str

str = ""
10.times do |i|
  str += "ruby"
  if (i+1) % 10 == 0 then
    str += "\n"
  end
end
print(str.gsub(/^ruby/, "Ruby"))
print(str.gsub(/ruby$/, "Ruby"))