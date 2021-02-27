# deleteメソッド
# 配列に入っている要素の値をを引数に指定することで削除できるメソッド
ages = [12, 25, 47]
ages.delete(25)
p ages

# delete_ifメソッド
# 奇数の値のみ削除
numbers = [5, 31, 40, 66]

numbers.delete_if do |n| 
  n.odd? # ブロック引数(n)の戻り値が真であれば要素を配列から削除する
end

p numbers
