# テストコードのひな形
# Minitestライブラリの読み込み
require 'minitest/autorun'

# クラスを作成する場合はキャメルケースで書く(名前にTestを付ける)
# SampleTestはMinitest::Testを継承することを表している(後程学習予定)
class SampleTest < Minitest::Test
  def test_sample # Minitestはtest_で始まるメソッドを全て実行する
    assert_equal 'Ruby', 'ruby'.upcase # assert_equal 期待する結果, テスト対象となる式や値
  end
end
