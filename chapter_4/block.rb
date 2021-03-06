# eachメソッド
# 配列の各要素を2倍し、新しい配列を作成
ages = [3, 12, 21, 35]
new_ages = []
ages.each { |a| new_ages << a * 2 }
p new_ages

# mapメソッド(collect)
# 配列の要素の数だけブロック内で処理を繰り返して新しい配列を作成
ages = [3, 12, 21, 35]
new_ages = ages.map { |a| a * 2}
p new_ages

# selectメソッド(find_all)
# ブロック内の戻り値を評価し、真である要素を集める
# 偶数の数値だけ集めた配列を作成
numbers = [1, 2, 3, 4, 5, 6]
even_numbers = numbers.select { |n| n.even? }
p even_numbers

# rejectメソッド
# ブロック内の戻り値を評価し、偽である要素を集める
# 偶数以外の数値を集めた配列を作成
numbers = [1, 2, 3, 4, 5, 6]
even_numbers = numbers.reject { |n| n.even? }
p even_numbers

# findメソッド(detect)
# ブロック内の戻り値を評価し、真である最初の要素のみ返す
# 最初の奇数の数値を返す
numbers = [1, 2, 3, 4, 5, 6]
even_numbers = numbers.find { |n| n.odd? }
p even_numbers

# injectメソッド(reduce)
# 最初にinjectメソッドの引数をnumbers変数の1番目の要素に加算する => 11
# 2回目は最初にで加算された要素(11)をnumbers変数の2番目の要素に加算する => 22
# 3回目は2回目にで加算された要素(22)をnumbers変数の3番目の要素に加算する => 42
# 最後の要素に達したため42はinjectメソッドの戻り値となる
# 加算する要素はresult, 加算される要素はn
numbers = [9, 11, 20]
new_numbers = numbers.inject(2) { |result, n| result + n }
p new_numbers