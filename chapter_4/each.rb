# eachメソッド
# 配列の要素を最初から最後まで順に取り出す
# 変数namesと複数形にする
names = ["muffin", "milk", "mint"] 
# nameはブロック引数であり、配列の要素が入る
names.each do |name| 
    puts name
end
# do〜endまでブロック範囲と呼ばれ配列の要素をどう扱うかブロックに記述する

# 変数sumに配列の格要素を加算する
numbers = [12, 49, 88]
sum = 0 # 変数sumはeachの外で定義する
numbers.each do |n|
    sum += n # 変数sumに配列の格要素を加算する処理を記述
end

puts sum