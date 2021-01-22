feature '#switch_turns' do
  scenario 'test play screen shows current turn' do
    sign_in_and_play
    expect(page).to have_content("Alfred's Turn")
  end

  scenario 'test current turn changes after attack' do
    sign_in_and_play
    attack_and_click_ok
    expect(page).to have_content("Bruce's Turn")
  end
end

