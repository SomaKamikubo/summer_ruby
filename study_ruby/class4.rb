puts("-------オブジェクトおさらい------")
class Apple
    attr_accessor :color, :price
    def initialize(color="red",price=150)
        @color = color
        @price = price
    end
    def talking
        puts("リンゴです")
    end
end
apple = Apple.new
p apple.color
p apple.price
apple.talking


puts("-------カプセル化------")
class Foo
    attr_reader :foo, :bar
    def initialize(foo="foo", bar="bar")
      @foo = foo
      @bar = bar
    end
end
foo = Foo.new
p foo.foo
p foo.bar


class FamilyMember
    def initialize(family_name="Yamada", name="Tarou")
        @family_name = family_name
        @name = name
    end
    def name
        return @family_name + " " + @name
    end
end
member = FamilyMember.new
p member.name

puts("-------ポリモルフィズム------")
p "abc".length
p [1, 2, 3].length

puts("-------ダックタイピング------")
def print_length(obj)
    puts("obj length is #{obj.length}")
end

puts("-------アイデンティティ------")
a = "foo"
b = a
# 同じ文字かで判定する
p(a == b)  #=> true
c = [1, 2]
d = c
# 配列の要素が同じかで判定する
p(c == d)  #=> true
e = 1
f = "1"
# 異なるオブジェクトで判定する
p(e == f)  #=> false


puts("-------object_idメソッド------")
a = "foo"
b = "foo"
p(a.object_id)
p(b.object_id)


puts("------eql?メソッド------")
a = "foo"
b = "foo"
p(a == b)       #=> 値が同じなのでtrue
p(a.equal?(b))  #=> 値が違うのでfalse
a = b
p(a.equal?(b))  #=> 同一なのでtrue
