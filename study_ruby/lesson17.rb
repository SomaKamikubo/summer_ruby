ARGV.each do |i|
    file = File.open(i)
    print file.read
    file.close
end

# str = gets
# p str

p Dir.pwd

# dir = Dir.open(Dir.pwd)
# dir.path
# pp Dir.instance_methods
# require "pp"

# require "open-uri"
# open("http://www.ruby-lang.org/") {|f|
#   f.each {|line| p line}
# }


# require "find"
# path = Dir.pwd
# Find.find("#{path}"){|f| p f }

require "find"
path = Dir.pwd
Find.find("#{path}"){|f|
  if FileTest.directory?(f)
    dir, base = File.split(f)
    if /(tmp|app|data|lib|config|vendor|db|log|public|test)/ =~ base
      Find.prune
    end
    p f
  end
}