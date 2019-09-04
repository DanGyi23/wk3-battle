require "spec_helper"

feature 'Lose condition' do
  scenario 'Display that a player has lost when they reach 0HP' do
    sign_in_and_play
    18.times do
      click_button 'Attack'
      click_button "OK"
    end
      click_button 'Attack'
    expect(page).to have_content 'Mittens has 0HP, Mittens fainted!'
  end
end