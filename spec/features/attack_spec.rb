feature 'Attack' do
  scenario 'should confirm attack' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Fluffy has attacked Muffin with his vocals. And it hurt.'
  end

  scenario 'should reduce players hit points' do
    sign_in_and_play
    click_button 'Attack'
    click_link 'Back To Play'
    expect(page).not_to have_content("Fluffy has 100 hit-points and Muffin has 100 hit-points.")
    expect(page).to have_content("Fluffy has 100 hit-points and Muffin has 90 hit-points.")
  end

end
