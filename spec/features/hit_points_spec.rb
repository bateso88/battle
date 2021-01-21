# frozen_string_literal: true

feature 'showing HP' do
  scenario 'Shows opponents HP' do
    sign_in_and_play
    expect(page).to have_content('Bruce: 60 HP')
  end
end
