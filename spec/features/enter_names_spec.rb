# frozen_string_literal: true

feature 'fill name of the players' do
  scenario 'expecting names' do
    sign_in_play
    expect(page).to have_content 'neha vs sophia'
  end
  end
