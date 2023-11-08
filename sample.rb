input_line = gets.to_i # 整数に変換して繰り返し回数の処理を決定する
input_line.times do
  s = gets.chomp.split(" ") # getsで改行文字含め入力を取得 , chompで末尾の改行文字を取り除く , split(" ")で入力文字列を空白文字で分割し、配列にする。
  print "hello = #{s[0]}, world = #{s[1]}\n"# printは文字列の出力 一方でputsと異なり自動で改行が追加されないため、明示的に\nを記述
end

## サンプルコード
# 2
# 2 5
# 3 4

## 出力例
# hello = 2, world = 5
# hello = 3, world = 4

## コードの説明
# 最初の入力が、その後入力される行数を示す
# 2行目以降は、それぞれhello,worldの値が,区切りで書かれている。