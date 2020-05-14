require 'spec_helper.rb'

feature 'Testing form submission' do
  scenario 'Can submit a form with player names and see them' do
    sign_in_and_play
    expect(page).to have_content 'Jon vs. Joe'
  end
end
