# 配列は変数に複数のデータを格納できる
name = ["muffin", "milk", "mint"]

# 配列は変数[数値]と指定することで格要素を取得できる
# 配列の要素は0.1.2...と番号が割り当てられている
puts name[0]
puts name[1]
puts name[2]

# size(length)メソッドを使用することで要素の数を取得できる
puts name.size

# 要素の変更(代入)
name[1] = "honey"
p name

# 要素の追加
name[3] = "cacao"
p name

# <<を使用することで配列の最後に要素を追加できる
name << "bean"
p name

# 要素を削除したい場合はdelete_atメソッドを使用する
name.delete_at(4)
p name

# 配列の多重代入
a, b = [100, 200]
puts a
puts b

# 割り算の商と余りを配列として返すdivmodメソッド
# 配列のまま受け取る
quo_rem = 255.divmod(21) # [12, 3]
puts "商=#{quo_rem[0]}、余り=#{quo_rem[1]}"

# 別々の変数として受け取る
quotient, remainder = 366.divmod(5) # [73, 1]
puts "商=#{quotient}、余り=#{remainder}"
