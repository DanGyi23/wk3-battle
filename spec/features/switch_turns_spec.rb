require 'spec_helper'

feature 'switch turns' do
  scenario 'after an attack, the game switches turns from p1 to p2' do
    sign_in_and_play
    click_button 'Attack'
    click_button "OK"
    expect(page).not_to have_content("Dave, it is now your turn")
    expect(page).to have_content("Mittens, it is now your turn")
  end
end