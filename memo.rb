require "csv" # CSVファイルを扱うためのライブラリを読み込んでいます

puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"

memo_type = gets.to_i # ユーザーの入力値を取得し、数字へ変換しています
 
 # if文を使用して続きを作成していきましょう。
 # 「memo_type」の値（1 or 2）によって処理を分岐させていきましょう。
 
 #1、２入力による条件分岐
 if memo_type == 1
   puts "拡張子を除いたファイルを入力してください"
   file_name = gets.chomp
   puts "メモしたい内容を記入してください"
   puts "完了したらCtrl + Dを押します"
 
   CSV.open("#{file_name}.csv","w") do |csv|
   csv_memo = readlines
   csv << csv_memo
 end
 
 #既存のメモを編集する
 elsif memo_type == 2
   puts "既存のメモを編集します。拡張子を除いた既存ファイル名を入力してください"
   file_name_edit = gets.chomp
   puts "編集したい内容を記入してください"
   puts "完了したらCtrl + Dを押します"
 
   CSV.open("#{file_name_edit}.csv","a") do |csv_edit|
   csv_memo_edit = readlines
   csv_edit << csv_memo_edit
 end
end 
 
 
 
 
   