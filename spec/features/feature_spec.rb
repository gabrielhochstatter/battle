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
    expect(page).to have_content('playertwo HP: 50')
  end
end
