feature 'Hit points' do
  scenario 'Display both players with 100 hit points on /play' do
    sign_in_and_play
    expect(page).to have_content 'Dave: 100HP\nMittens: 100HP'
  end
end