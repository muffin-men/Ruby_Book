# 複数条件を指定する場合はelsifよりcase文で書いた方がシンプルになる。
# if文
country = 'italy'

if country == 'japan'
  puts 'こんにちは'
elsif country == 'us'
  puts 'Hello'
elsif country == 'italy'
  puts 'ciao'
else
  puts '!?!?'
end

# case文
# 複数の値を指定できる
country = 'アメリカ'
case country
when 'japan', '日本'
  puts 'こんにちは'
when 'us', 'アメリカ'
  puts 'Hello'
when 'italy', 'イタリア'
  puts 'ciao'
else
  puts '!?!?'
end

# 変数に値を代入できる
country = 'japan'

message =
  case country
  when 'us' then 'Hello'
  when 'italy' then 'ciao'
  when 'japan' then 'こんにちは'
  else '!?!?'
  end

puts message