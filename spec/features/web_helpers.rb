# frozen_string_literal: true

def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Alfred'
  fill_in :player_2_name, with: 'Bruce'
  click_button 'Submit'
end
