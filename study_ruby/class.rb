puts("-----class------")
ary = Array.new
p ary
str = String.new
p str.class

class HelloRuby
    def hello
        puts("Hello")
    end
end
greeting = HelloRuby.new
greeting.hello

puts("-----initialize------")
class Person
    def initialize(name="Bob")
        @name = name
    end
    def name
        puts(@name)
    end
end
bob = Person.new
bob.name
john = Person.new("John")
john.name

puts("-----インスタンス------")
class Foo
    def initialize(arg)
      @foo = arg
    end
    def foo
      puts @foo
    end
    def bar
      puts @foo
    end
end

foo = Foo.new("foo")
foo.foo
foo.bar

puts("-----アクセスメソッド------")
class Person2
    def name
        return @name
    end
    def name=(value)
        @name = value
    end
end
john = Person2.new
john.name = "John"
p john.name

puts("-----メソッドを定義するための機能------")
class Greeting
    attr_reader :hello
    attr_writer :bye
    attr_accessor :pardon
end
greeting = Greeting.new
greeting.hello
greeting.bye = 42
greeting.pardon = "sorry"
p greeting.pardon

puts("-----疑問符------")
p @foo
p @foo.nil?
@foo = "foo"
p @foo.nil?

puts("-----感嘆符------")
text = "abcde "
# メソッド呼出し
p text.chop  #=> "abcde"
p text       #=> "abcde "
# 破壊的なメソッド呼出し
p text.chop! #=> "abcde"
p text
