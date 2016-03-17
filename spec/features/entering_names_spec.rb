
feature 'Sign in' do
  scenario 'can enter names' do
    visit('/')
    fill_in :player1, with: "Fluffy"
    fill_in :player2, with: "Blah"
    click_button 'Submit'
    expect(page).to have_content("Fluffy vs Blah Song Battle")
  end
end
