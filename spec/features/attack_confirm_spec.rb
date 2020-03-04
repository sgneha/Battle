# frozen_string_literal: true

feature 'To win a battle,attack' do
  scenario 'can attack player 2 and confirm' do
    sign_in_play
    # click_button('Attack')
    click_link('Attack')

    expect(page).to have_content 'neha attacked sophia'
  end
end
