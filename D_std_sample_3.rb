# 標準入力で3行それぞれで文字列が与えられるので、それらを入力して、そのまま3行で出力してください。

# 入力される値
# 文字列A, B, Cが各行で入力されます。


# 入力値最終行の末尾に改行が１つ入ります。
# 文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
# 期待する出力
# 3行での出力

# 条件
# すべてのテストケースにおいて、以下の条件をみたします。

# ・A, B, Cは1文字以上100文字以下の文字列
# ・A, B, Cの各文字は英小文字または大文字または数字または半角スペース

# 入力例1
# aaaaa
# bbbbbb
# cccc

# 出力例1
# aaaaa
# bbbbbb
# cccc

# 入力例2
# a b c
# d e f
# g h i

# 出力例2
# a b c
# d e f
# g h i

# 入力例3
# 2000 500
# aba 200 3a 3
# ppppppppp

# 出力例3
# 2000 500
# aba 200 3a 3
# ppppppppp

# 入力例4
# 0x04a12bE avacc
# fffew2feafewafez
# asas111 abbaewafew

# 出力例4
# 0x04a12bE avacc
# fffew2feafewafez
# asas111 abbaewafew


# 3.times do
#   # 標準入力から1行読み込み、改行を除去する
#   input_line = gets.chomp
  
#   # 入力のバリデーション
#   if input_line =~ /\A[a-zA-Z0-9 ]{1,100}\z/
#     # 条件を満たす場合、そのまま出力する
#     puts input_line
#   else
#     # 条件を満たさない場合、エラーメッセージを出力して終了する
#     puts "Error: Input does not meet the requirements."
#     exit
#   end
# end

# 入力された3行を保存する配列を用意する
inputs = []

# 3回入力を受け取る
3.times do
  # 標準入力から1行読み込み、改行を除去して配列に追加する
  inputs << gets.chomp
end

# バリデーションチェックと出力
inputs.each do |input_line|
  # 入力のバリデーション
  unless input_line =~ /\A[a-zA-Z0-9 ]{1,100}\z/
    # 条件を満たさない場合、エラーメッセージを出力して終了する
    puts "Error: Input does not meet the requirements."
    exit
  else
    puts input_line
  end
end

# # 条件を満たすすべての入力を出力する
# inputs.each { |input_line| puts input_line }

