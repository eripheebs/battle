
feature 'Sign in' do
  scenario 'can enter names' do
    sign_in_and_play
    expect(page).to have_content("Fluffy vs Muffin Song Battle")
  end
end
