require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"
selectNumber = gets.to_i
puts selectNumber

  if selectNumber == 1
    puts "拡張子を除いたファイル名を入力してください"
    textTitle = gets.to_s
    CSV.open(textTitle,'w') do |text|

    puts "メモしたい内容を入力してください\n完了したらENTERを押します"
    textbody = gets.to_s
    text << [textbody]
  end

  else selectNumber == 2
    puts "編集したいファイル名を入力してください"
    textTitle = gets.to_s
    CSV.open(textTitle,'a') do |text|

    puts "編集内容を入力してください\n完了したらENTERを押します"
    textbody = gets.to_s
    text << [textbody]
    end
  end
