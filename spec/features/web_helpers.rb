def sign_in_and_play
  visit('/')
  fill_in :player1, with: "Fluffy"
  fill_in :player2, with: "Muffin"
  click_button 'Submit'
end

def first_attack
  click_button 'Attack'
  click_link 'Back To Play'
end
