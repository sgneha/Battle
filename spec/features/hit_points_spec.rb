# frozen_string_literal: true

feature 'view hit points' do
  scenario "sees HP's of player 2" do
    sign_in_play
    expect(page).to have_content 'mittens: 60HP'
  end
end
