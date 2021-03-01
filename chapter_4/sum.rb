# ブロック引数・ブロック内の変数
# 偶数のみ、値を5倍して加算する
# ブロック内には複数のコード書くことができる
numbers = [2, 7, 9]
sum = 0
numbers.each do |n|
  sum_value = n.even? ? n * 5 : n # 条件演算子 => 式 ? 真 : 偽
  sum += sum_value
end

puts sum
# sumはブロック外で作成された変数なためブロック外・内どちらでも有効
# sum_valueはブロック内で作成された変数なためブロック内でのみ有効

