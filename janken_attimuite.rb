puts "最初はグーはじゃんけん"

def janken
 puts "[0]グー\n[1]チョキ\n[2]パー\n[3]戦わない"
 
 player_hand = gets.to_i 
 enemy_hand = rand(3)     #ランダムで返す
 
 jankens =["グー","チョキ", "パー","戦わない" ]
 
 puts "ホイ！"
 puts "---------------"
 puts "あなた:#{jankens[player_hand]}を出しました"
 puts "相手:#{jankens[enemy_hand]}を出しました"
 puts "---------------"
 
 #戦わない場合
 if player_hand == 3
  puts "じゃんけんを終了します"
  return false
 end
 #あいこの場合
if player_hand == enemy_hand 
 puts "あいこで..."
 return true
 #勝ちの場合
elsif(player_hand == 0 && enemy_hand ==1)||(player_hand == 1 && enemy_hand == 2)||(player_hand == 2 && enemy_hand == 0)
 puts "あなたの勝ちです"
  win_attimuitehoi
else
 puts "あなたの負けです" #負けの場合
  lose_attimuitehoi
end
end

def win_attimuitehoi
 puts "----------"
 puts "あっち向いて〜"
 puts "[0]上\n[1]下\n[2]左\n[3]右"
  
 player_yubi = gets.to_i 
 enemy_face  = rand(4)
 attimuitehoi = ["上","下","左","右"]
 puts "ほい!"
 puts "-----------"
 puts "あなた:#{attimuitehoi[player_yubi]}"
 puts "相手:#{attimuitehoi[enemy_face]}"
 
 if player_yubi == enemy_face 
 puts "勝ちです"
 else
 puts "じゃんけん"
   return true
 end
end

def lose_attimuitehoi
  puts "----------"
 puts "あっち向いて〜"
 puts "[0]上\n[1]下\n[2]左\n[3]右"
  
 player_yubi = gets.to_i 
 enemy_face  = rand(4)
 attimuitehoi = ["上","下","左","右"]
 puts "ほい!"
 puts "-----------"
 puts "あなた:#{attimuitehoi[player_yubi]}"
 puts "相手:#{attimuitehoi[enemy_face]}"
 
 if player_yubi == enemy_face 
 puts "負けです"
 else
 puts "じゃんけん"
   return true
 end
end
 next_game = true

while next_game
  next_game = janken
end
 