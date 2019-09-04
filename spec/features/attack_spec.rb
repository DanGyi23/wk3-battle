require "spec_helper"

feature 'Attack' do
  before(:each) do 
    sign_in_and_play
  end
  
  scenario 'Player 1 attacks player 2' do
    click_button 'Attack'
    click_button 'OK'
    click_button 'Attack'
    expect(page).to have_content 'Mittens attacked Dave'
  end

  scenario 'reduce player 2 HP by 10' do
    click_button 'Attack'
    click_button 'OK'
    expect(page).not_to have_content('Mittens: 100HP')
    expect(page).to have_content('Mittens: 90HP')
  end

  scenario 'reduce Player 1 HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    click_button 'Attack'
    click_button 'OK'
    expect(page).not_to have_content('Dave: 100HP')
    expect(page).to have_content('Dave: 90HP')
  end

end