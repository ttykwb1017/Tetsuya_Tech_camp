# q1
# def add_excramation(word)
#   word = "#{word}!"
#   return word
# end

# puts "何か値を入力してください・・・"
# value = gets.chomp
# puts add_excramation(value)

# q2

# def times(num1, num2)
#   kake = num1 * num2
#   return kake
# end

# puts "最初の数字を入力してください"
# number1 = gets.to_i
# puts "2番目の数字を入力してください"
# number2 = gets.to_i
# kakezan = times(number1, number2)
# # puts "#{number1}と#{number2}をかけた答えは#{kakezan}です！"
# puts "#{number1}と#{number2}をかけた答えは#{times(number1,number2)}です！"

# q3

# def output(array, choice)
#   puts "#{choice}番目の要素は#{array[choice-1]}です！"
# end

# fruit_box = ["apple", "orange", "cherry"]
# puts "何が出るかな？取り出したい要素の順番を入力してください"
# select = gets.to_i
# output(fruit_box, select)

# q4

def output(hash, word)
  if word == "title"
    puts "#{hash[:title]}"
  elsif word == "genre"
    puts "#{hash[:genre]}"
  elsif word == "year"
    puts "#{hash[:year]}"
  else
    puts "不正な値です"
  end
end

movie = {title: "ハリーポッター", genre: "ファンタジー", year: "2001年"}
puts "以下から１つを選んで入力してください。"
puts "・title\n・genre\n・year"
string = gets.chomp

output(movie, string)