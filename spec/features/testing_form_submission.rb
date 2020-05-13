require "../spec_helper"

feature 'Testing form submission' do
  scenario 'Can submit a form with player names and see them' do
    visit('/')
    fill_in('playerone', with: 'Jon')
    fill_in('playertwo', with: 'Joe')
    click_button('Submit')
    expect(page).to have_content 'Jon vs. Joe'
  end
end
