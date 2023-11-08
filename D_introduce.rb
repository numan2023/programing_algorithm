# 自己紹介を行うプログラミを作成
# 入力値:なし
# 期待する出力:
  # name: "名前"
  # language: "言語"
  # hitokoto: "一言"

# 条件
  # ・出力は 3 行でおこなってください
  # ・出力の各行は 1000 文字以内で出力してください

input_name = gets.chomp
input_language = gets.chomp
input_hitokoto = gets.chomp
puts "name: #{input_name}"
puts "language: #{input_language}"
puts "hitokoto: #{input_hitokoto}"
