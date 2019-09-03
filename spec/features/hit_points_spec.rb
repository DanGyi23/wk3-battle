feature 'Hit points' do
  scenario 'Display both players hit points on /play' do
    sign_in_and_play
    expect(page).to have_content 'Mittens: 100HP'
  end
end