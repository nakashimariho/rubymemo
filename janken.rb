
def janken
puts "じゃんけん..."
puts "0(グー)1(チョキ)2(パー)"
player_hand = gets.to_i

program_hand = rand(3)

jankens = ["グー","チョキ","パー"]

puts "ホイ！"
puts "-------------------"
puts "あなた:#{jankens[player_hand]}を出しました"
puts "相手:#{jankens[program_hand]}を出しました"
puts "-------------------"

win = (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
draw = player_hand == program_hand

if draw
  return true
  
elsif win
  puts "あっち向いて〜"
  puts "0(上)1(下)2(右)3(左)"
  player_face = gets.to_i
  puts "ホイ！"
  
  program_face = rand(4)
  
  fingers = ["上","下","右","左"]
  
  puts "-------------------"
  puts "あなた:#{fingers[player_face]}"
  puts "相手:#{fingers[program_face]}"
  puts "-------------------"
else
  puts "あなたの負けです"
  return true
end

if player_face == program_face
  puts "勝ちましたーーー！"
else 
  return true
end
end

next_game = true

while next_game do
  next_game = janken
end

