def sign_in_and_play
  visit('/')
  fill_in('player_one_name', with: 'playerone')
  fill_in('player_two_name', with: 'playertwo')
  click_button('Submit')
end

def attack_cycle
  click_button('Attack Player 2!')
  click_button('Ok')
  click_button('Attack Player 1!')
  click_button('Ok')
end

def play_game_to_end
  sign_in_and_play
  attack_cycle
  attack_cycle
  attack_cycle
  attack_cycle
  click_button('Attack Player 2!')
end
