feature 'attack player 2' do
    scenario "attack" do
      sign_in_and_play
      click_button 'attack'
      expect(page).to have_content 'Player 1 Attacked Player 2'
    end 
  end