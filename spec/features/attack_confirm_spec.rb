# frozen_string_literal: true

feature 'Attacking' do
  scenario 'can attack player 2 and confirm' do
    sign_in_play
    click_link('Attack')
    expect(page).to have_content 'dave attacked mittens'
  end
  scenario 'reduce player 2 HP bt 10' do
    sign_in_play
    click_link('Attack')
    expect(page).not_to have_content 'mittens: 60HP'
    expect(page).to have_content 'mittens: 50HP'
  end
end
