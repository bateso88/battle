
feature '#losing' do 
  scenario 'loser can see you lose page' do
    sign_in_and_play 
    11.times { attack_and_click_ok }
    expect(page).to have_content "Bruce loses!"
  end
end