require "../spec_helper"

feature 'Testing hitpoint display' do
  scenario 'Can display player 2 hitpoints' do
    sign_in_and_play
    expect(page).to have_content 'Joe Hitpoints: 60'
  end
end
