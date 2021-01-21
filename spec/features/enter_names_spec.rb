# frozen_string_literal: true

feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/test_infrastructure')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end

feature 'Entering players' do
  scenario 'Displays page content instructions' do
    visit('/')
    expect(page).to have_content('Please enter your names!')
  end

  scenario 'Displays Submit button' do
    visit('/')
    expect(page).to have_button('Submit')
  end

  scenario 'Accepts submitted names' do
    sign_in_and_play
    expect(page).to have_content('Alfred vs. Bruce')
  end
end
