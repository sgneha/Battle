# frozen_string_literal: true

feature 'able to see hit points' do
  scenario "player 1 sees HP's of player 2" do
    sign_in_play
    expect(page).to have_content 'Hit points'
  end
end
