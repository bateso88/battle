# frozen_string_literal: true

feature 'attack opponent' do
  scenario 'attack other player and receive confirmation' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content('Alfred attacked Bruce!')
  end

  scenario 'attack other player and reduce their HP' do
    sign_in_and_play
    attack_and_click_ok
    expect(page).to have_content('Bruce: 50 HP')
  end

  scenario 'attack player 1 and receive confirmation' do
    sign_in_and_play
    attack_and_click_ok
    click_button 'Attack'
    expect(page).to have_content('Bruce attacked Alfred')
  end

  scenario 'attack other player and reduce their HP' do
    sign_in_and_play
    attack_and_click_ok
    attack_and_click_ok
    expect(page).to have_content('Alfred: 50 HP')
  end

end
