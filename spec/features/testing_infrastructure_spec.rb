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
    visit('/')
    fill_in :player_1_name, with: 'Alfred'
    fill_in :player_2_name, with: 'Bruce'
    click_button 'Submit'
    expect(page).to have_content('Alfred vs. Bruce')
  end
end

# post '/named-rabbit' do
#   p params
#   @rabbit_name = params[:name]
#   params[:age]
#   params[:breed]
#   erb(:index)
# end
#
# <form action ='/named-rabbit' method = "post" >
#   <input type='text' name='name'>
#   <input type='submit' value='Submit'>
# </form>
