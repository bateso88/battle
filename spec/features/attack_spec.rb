# frozen_string_literal: true

feature 'attack opponent' do
  scenario 'attack other player and receive confirmation' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content('Alfred attacked Bruce!')
  end

  scenario 'attack other player and reduce their HP' do 
    sign_in_and_play
    click_button 'Attack'
    click_link 'OK'
    expect(page).to have_content("Bruce: 50 HP")
  end
end
