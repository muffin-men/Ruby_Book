# %q! !はシングルクオートで囲んだことと同じになる
puts %q!He said, "Dont' Speak"!

# %Q! !はダブルクオートで囲んだことと同じになる（改行、式展開が使える)
something = "Hello"
puts %Q!She said, "#{something}"!

# %! !もダブルクオートで囲んだことと同じになる
something = "Bye"
puts %!They said, "#{something}"!

# ?を区切り文字として使う
puts %Q?He said, "Dont' Speak"?

# { }を区切り文字として使う
puts %Q{He said, "Dont' Speak"}


