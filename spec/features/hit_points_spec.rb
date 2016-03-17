feature 'Hit points' do
  scenario 'should start with 100' do
    sign_in_and_play
    expect(page).to have_content("Fluffy has 100 hit-points and Muffin has 100 hit-points.")
  end
end
