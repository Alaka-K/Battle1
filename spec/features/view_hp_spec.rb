feature 'hit points' do
    scenario "user can see hitpoints" do
      visit('/form')
      fill_in 'Name1', with: 'Player 1'
      fill_in 'Name2', with: 'Player 2'
      click_button 'Submit'
      
      expect(page).to have_content 'Player 2: 100HP'
    end 
end