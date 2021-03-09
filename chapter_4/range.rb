# 範囲オブジェクト
# include?メソッド
# 引数の値に含まれているか判定できるメソッド
# ..は5が範囲に含まれる(1以上5以下)
range = 1..5
p range.include?(4.9)
p range.include?(5)
p range.include?(6)

# ...は5が範囲に含まれない(1以上5未満)
range = 1...5
p range.include?(4.9)
p range.include?(5)
p range.include?(6)

# 範囲オブジェクトを変数に入れず直接呼び出す場合は()で囲む
p (1..5).include?(5)

# 配列に対して範囲オブジェクトを渡すと指定した範囲の要素を取得することができる
a = [1, 2, 3, 4, 5, 6]
p a[2..4]

# n以上n以下、n以上n未満の判定をする場合
# 不等号
def liquid?(temperture)
  # 0度以上100未満であれば液体と判定
  0 <= temperture && temperture < 100
end
p liquid?(-1)
p liquid?(0)
p liquid?(100)

# 範囲オブジェクト
def liquid?(temperture)
  (0...100).include?(temperture)
end
p liquid?(-1)
p liquid?(0)
p liquid?(100)

# case文の組み合わせることもできる
# 年齢に応じて料金を判定する
def charge(age)
  case age
  # 0歳から5歳までの場合
  when 0..5
    "0円です"
  # 6歳から12歳までの場合
  when 6..12
    "300円です"
  # 13歳から8歳までの場合
  when 13..18
    "600円です"
  # それ以外
  else
    '1000円です'
  end
end
puts charge(3)
puts charge(12)
puts charge(16)
puts charge(22)

# to_aメソッドを範囲オブジェクトに対して呼び出すことで値が連続する配列を作成できる
p (1..5).to_a
p ('a'...'e').to_a

# []の中に*と範囲オブジェクトを書いても配列を作成できる
p [*1..5]
p [*'a'...'e']

# 繰り返し処理
# 範囲オブジェクトを配列に変換
numbers = (1..4).to_a
sum = 0
numbers.each { |n| sum += n}
p sum

# 範囲オブジェクトに対して直接eachメソッドの呼び出すことも可能
sum = 0
(1..4).each { |n| sum += n}
p sum

# stepメソッド
# 1から10まで3つ飛ばしで繰り返し処理を行う
numbers = []
(1..10).step(3) { |n| numbers << n }
p numbers