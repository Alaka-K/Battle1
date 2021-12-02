feature 'entering names' do
    scenario "players can enter names" do
      visit('/form')
      fill_in 'Name1', with: 'Player 1'
      fill_in 'Name2', with: 'Player 2'
      click_button 'Submit'
      expect(page).to have_content 'Player 1 vs. Player 2'
    end 
end