# frozen_string_literal: true

feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_play
    expect(page).to have_content 'dave vs mittens'
  end
end
