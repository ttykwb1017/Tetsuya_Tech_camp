def post_review(array)

  post = {}
  puts "ジャンルを入力してください："
  post[:genre]= gets.chomp
  puts "タイトルを入力してください"
  post[:title] = gets.chomp
  puts "感想を入力してください"
  post[:review] = gets.chomp
  border= "-------------------------------"

  puts "ジャンル : #{post[:genre]} \n#{border}"
  puts "タイトル :  #{post[:title]} \n#{border}"
  puts "感想 :\n#{post[:review]} \n#{border}"

  array << post

  return array
end

def read_reviews(array)
  count = 0
  array.each do |post|
    puts "[#{count}] : #{post[:title]}のレビュー"
    count += 1
  end
  puts "\n見たいレビューの番号を入力してください"
  no = gets.to_i

  post = array[no]

  border = "---------------------------------"
  puts "ジャンル : #{post[:genre]}\n#{border}"
  puts "タイトル : #{post[:title]}\n#{border}"
  puts "感想 : \n#{post[:review]}\n#{border}"
end

def end_program
  exit
end

def exception
  puts "入力された値は無効な値です"
end


posts = []
while true do
  puts "レビュー数：#{posts.length}\n[0]レビューを書く\n[1]レビューを読む\n[2]アプリを終了する"
  suuzi = gets.to_i

  if suuzi == 0 then
    posts = post_review(posts)
  elsif suuzi == 1 then
   read_reviews(posts)
  elsif suuzi == 2 then
   end_program
  else  
   exception
  end
end