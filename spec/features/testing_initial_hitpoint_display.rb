require "../spec_helper"

feature 'Testing hitpoint display' do
  scenario 'Can display player 2 hitpoints' do
    visit('/')
    fill_in('playerone', with: 'Jon')
    fill_in('playertwo', with: 'Joe')
    click_button('Submit')
    expect(page).to have_content 'Player 2 Hitpoints: 60'
  end
end
