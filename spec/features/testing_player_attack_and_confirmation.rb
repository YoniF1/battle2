require 'spec_helper.rb'

feature 'Player 1 attacking player 2' do
  scenario 'Player 1 can click button and will receive confirmation of attack' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content('Player 1 has attacked player 2!')
  end
end
