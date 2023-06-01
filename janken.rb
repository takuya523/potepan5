p "じゃんけんゲーム"
def janken
  puts "[0]:グー\n[1]:チョキ\n[2]:パー\n[3]:戦わない"
  my_hand = gets.to_i

  rival_hand = rand(3)

  jankens = ["グー", "チョキ", "パー", "戦わない"]

  while my_hand > 3
    puts "0~3までの数字から選んでください"
    my_hand = gets.to_i
  end

  puts "私は#{jankens[my_hand]}です"
  puts "相手は#{jankens[rival_hand]}です"

  if my_hand == rival_hand
    puts "あいこで"
    return true
  elsif my_hand == 3
    puts "じゃんけんを終了します"
    exit
  elsif (my_hand == 0 && rival_hand == 1) || (my_hand == 1 && rival_hand == 2) || (my_hand == 2 && rival_hand == 0)
    puts "あなたの勝ちです"
    puts "---------------------"
    puts "あっち向いて..."
    $result = "win"
    Attimuite_hoi()
  else
    puts "あなたの負けです"
    puts "---------------------"
    puts "あっち向いて..."
    $result = "lose"
    Attimuite_hoi()
  end
end

def Attimuite_hoi
  puts "[0]:上\n[1]:下\n[2]:右\n[3]:左"
  my_direction = gets.to_i
  rival_direction = rand(4)

  directions = ["上", "下", "右", "左"]

  puts "ホイ！"
  puts "私は#{directions[my_direction]}です"
  puts "相手は#{directions[rival_direction]}です"



  if $result == "win" && my_direction == rival_direction
    puts "あなたの勝ちです"
    return false
  elsif $result == "lose" && my_direction == rival_direction
    puts "あなたの負けです"
    return false
  else
    puts "方向が異なりました"
    puts "じゃんけんに戻ります"
    puts "---------------------"
    puts "最初はグー、じゃんけん..."
    return true
  end
end


re_janken = true

puts "最初はグー、じゃんけん..."

while re_janken do
  re_janken = janken
end