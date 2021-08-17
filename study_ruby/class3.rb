module Fooo
    def foo
      puts("module foo")
    end
    # module_function :foo
end
# モジュールはインスタンスを作ることができない
# モジュールは継承ができない

puts("------include-------")
module Greeting
    def hello
      puts("Hello, Ruby!")
    end
    # module_function :hello
end
class Foo
    include Greeting
end
class Bar
    include Fooo
end
baz = Foo.new
baz.hello
baz2 = Bar.new
baz2.foo

# Greeting.hello
# Fooo.foo


puts("------特異メソッド-------")
module Foo2
    def foo
        puts("foo")
    end
    module_function :foo
end

class Bar2
    include Foo2
    def bar
        foo
    end
end

bar = Bar2.new
bar.bar

puts("------extend-------")
module Foo3
    def foo
      puts("foo")
    end
end
module Bar3
    extend Foo3
end
Bar3.foo  #=> foo


puts("------comparable-------")
class Foo4
    include Comparable
    attr_accessor :num
    def initialize(num)
      @num = num
    end
    def <=>(other)
      return @num <=> other.num
    end
  end
foo = Foo4.new(5)
bar = Foo4.new(10)
p foo < bar
p foo > bar


puts("------enumerable-------")
class MetaSyntax
    include Enumerable
    def initialize
      @variables = []
    end
    def add(value)
        @variables << value
    end
    def each
        @variables.each do |variable|
          yield variable
        end
    end
    def pf
        puts(@variables)
    end
end
ary = MetaSyntax.new
ary.add("foo")
ary.add("bar")
ary.add("baz")
ary.pf
ary.each_with_index do |item, index|
    puts("これは#{index}番目の#{item}です")
end
