# 標準入力でN行それぞれで文字列が与えられるので、それらを入力して、順にそのままN行で出力してください。

# 入力される値
# 1行目でNが与えらます。
# 続くN行の各行で文字列が与えられます。


# 入力値最終行の末尾に改行が１つ入ります。
# 文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
# 期待する出力
# N行での出力

# 条件
# すべてのテストケースにおいて、以下の条件をみたします。

# ・1 <= N <= 10
# ・入力される各文字列は1文字以上100文字以下の文字列
# ・入力される各文字列の各文字は英小文字または大文字または数字または半角スペース

# 入力例1
# 3
# aaaaa
# bbbbbb
# cccc

# 出力例1
# aaaaa
# bbbbbb
# cccc

# 入力例2
# 1
# a b c

# 出力例2
# a b c

# 入力例3
# 5
# 4
# 3
# 2
# 1
# 0

# 出力例3
# 4
# 3
# 2
# 1
# 0

# 入力例4
# 10
# 31415926
# a b c d
# 3
# 4
# 5
# 6
# 7
# 8
# 9
# ZZZZZZZZZ

# 出力例4
# 31415926
# a b c d
# 3
# 4
# 5
# 6
# 7
# 8
# 9
# ZZZZZZZZZ


inputs = []
n = gets.to_i

if n.between?(1,10)
  n.times do
    inputs << gets.chomp
  end
else
  puts "Error: N must be between 1 and 10"
end

inputs.each do |input|
  if input.match(/\A[a-zA-Z0-9 ]{1,100}\z/)
    puts input
  else
    puts "Error: Invalid input"
    exit
  end
end
