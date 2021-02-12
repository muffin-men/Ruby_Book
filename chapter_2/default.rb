# デフォルト引数
class Cat
  def name(name = "muffin")
    @name = name
  end

  def greeting
    puts "#{@name}さん、こんにちわ"
  end
end

# 引数なし
cat = Cat.new
cat.name
cat.greeting

# 引数あり
cat = Cat.new
cat.name("teraoka")
cat.greeting

# デフォルト値は複数指定できる
# 他のメソッドの戻り値を指定できる
def foo(time = Time.now, message = greeting)
  puts "time: #{time}, message: #{message}"
end

def greeting
  "goodnight"
end

puts foo