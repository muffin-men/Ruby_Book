# <<~識別子を使うと文字列をインデントさせることができる。
def method
  <<~'heredoc'
    He likes apple
    She likes banana
  heredoc
end

puts method

# 式展開が使える(<<"識別子") → <<'識別子'を使うと式展開が無効になる。
name = 'muffin'
greeting = <<text
初めまして。
私は#{name}と申します。
よろしくお願い致します。
text
puts greeting

# 引数として渡すこともできる(prependは文字列を先頭に追加するメソッド)
study = 'Ruby'
study.prepend(<<language)
Python
Swift
language
puts study

# メソッドを直接呼び出せる
game = <<title.upcase
pokemon
doragonquest
mario
title
puts game


