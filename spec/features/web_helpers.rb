def sign_in_and_play
  visit('/')
  fill_in('playerone', with: 'Jon')
  fill_in('playertwo', with: 'Joe')
  click_button('Submit')
end