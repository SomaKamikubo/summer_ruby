puts("------継承-------")
class Foo
    def foo
        puts("foo")
    end
end

class Bar < Foo
    def bar
        puts("bar")
    end
end

bar = Bar.new
bar.foo
bar.bar

class Foo1
end
class Bar1 < Foo1
end
class Baz1 < Bar1
end

baz = Baz1.new
baz.is_a?(Baz1)


puts("------オーバーライド-------")
class Foo2
    def foo
        puts("foo")
    end
end
class Bar2 < Foo2
    def foo
        super
        puts("override")
        super
    end
end
bar = Bar2.new
bar.foo

puts("------オーバーライド２-------")
class Foo3
    def foo(args=5)
        p args * 2
    end
end
class Bar3 < Foo3
    def foo(args=2)
        super(10)
        super
        super()
    end
end

bar = Bar3.new
bar.foo

puts("------スーパークラスの出力-------")
p Bar3.superclass

puts("------private------")
class Foo4
    private
        def foo
            puts("Private Method bar")
        end
    protected
        def bar
            puts("Protected Method foo")
        end
    public
        def useFoo(o)
            o.foo
        end
        def useBar(o)
            o.bar
        end
end

class Bar4 < Foo4
    def call_foo
      foo
    end
end
bar = Bar4.new
bar.call_foo

a = Foo4.new
c = Foo4.new
a.useBar(c)
a.useFoo(c)#privateなのでエラーが出る

