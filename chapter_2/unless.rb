# if文で否定条件を書いている場合はunless分に置き換えられる。
# if文
status = 'error'
if status != 'ok'
  puts '何か異常があります'
else
  puts '問題ないです'
end

# unless文
unless status == 'ok'
  puts '何か異常があります'
else 
  puts '問題ないです'
end

# unless文は直接変数に代入できる
# 文の後ろに置いたりできる
message =
  '何か異常があります' unless status == 'ok'
puts message