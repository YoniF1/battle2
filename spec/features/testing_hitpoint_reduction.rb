require 'spec_helper.rb'

feature 'Removing hitpoints' do
  scenario 'Can remove Player 2s hitpoints after attack from Player 1' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content 'Joe Hitpoints: 50'
  end
end
