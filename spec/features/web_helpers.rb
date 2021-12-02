def sign_in_and_play
  visit('/form')
  fill_in 'Name1', with: 'Player 1'
  fill_in 'Name2', with: 'Player 2'
  click_button 'Submit'
end