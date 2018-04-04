def sign_in_and_play
  visit('/')
  fill_in('player_one_name', with: 'playerone')
  fill_in('player_two_name', with: 'playertwo')
  click_button('Submit')
end
