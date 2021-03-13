# injectメソッド
# ①最初の繰り返し処理ではhexに'#'が入ること
# ②ブロックの中のhex + n.to_s(16).rjust(2, '0')で
# 作成された文字列は、次の繰り返し処理のhexに入る。
# ③配列の要素が最後まで到達したら繰り返し処理は終了となり最後の値が
# injectメソッドの戻り値となる。
def to_hex(r, g, b)
  [r, g, b].inject('#') do |hex, n|
    hex + n.to_s(16).rjust(2, '0')
  end
end
# scanメソッド
# メソッドの引数は正規表現と呼ばれ、2文字の英数字を探索する。
# 16進数の文字列を配列にして返す。
# mapメソッドを使用してブロックの戻り値を新しい配列にする。
def to_ints(hex)
  hex.scan(/\w\w/).map(&:hex)
end