# frozen_string_literal: true

def sign_in_play
  visit('/')
  fill_in('Player1', with: 'neha')
  fill_in('Player2', with: 'sophia')
  click_button('Submit')
end
