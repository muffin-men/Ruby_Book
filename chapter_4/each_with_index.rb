# each_with_indexメソッド
# ブロック引数の第2引数に添え字を渡してくれる
fruits = ['apple', 'orenge', 'melon']
# ブロック引数のiには0, 1, 2...と要素の添え字が入る
fruits.each_with_index { |fruit, i| puts "#{i}: #{fruit}" }

# mapメソッド
fruits.map.with_index { |fruit, i| "#{i}: #{fruit}" }

# delete_ifメソッド
# 名前に"e"が含み、添え字が偶数である要素を削除する
fruits.delete_if.with_index { |fruit, i| fruit.include?('e') && i.even? }
