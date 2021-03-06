feature 'Players can enter names' do
  scenario 'Players can enter their names and see them' do
    sign_in_and_play
    expect(page).to have_content('playerone')
    expect(page).to have_content('playertwo')
  end
end

feature 'Players can see each HP' do
  scenario 'players can see each others hitpoints' do
    sign_in_and_play
    expect(page).to have_content('playerone HP:')
    expect(page).to have_content('playertwo HP:')
  end
end

feature 'Attacking' do
  scenario 'attack player 2' do
    sign_in_and_play
    click_button 'Attack Player 2!'
    expect(page).to have_content 'playerone attacked playertwo'
  end

  scenario 'attacking player 2 reduces hp by 10' do
    sign_in_and_play
    click_button 'Attack Player 2!'
    expect(page).to have_content 'playertwo now has 40hp'
  end

  scenario 'swapping turns' do
    sign_in_and_play
    click_button 'Attack Player 2!'
    click_button 'Ok'
    expect(page).to have_button('Attack Player 1!')
  end

  scenario 'one player wins' do
    sign_in_and_play
    play_game_to_end
    expect(page).to have_content 'playerone wins!'
  end
end
