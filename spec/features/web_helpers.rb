# frozen_string_literal: true

def sign_in_play
  visit('/')
  fill_in('player_1_name', with: 'dave')
  fill_in('player_2_name', with: 'mittens')
  click_button('Submit')
end
