require 'spec_helper'

feature 'User visitor signs up' do
  scenario 'With a valid email and password' do
    sign_up_with('info@example.com', 'secret')
    expect(page).to have_content('Sign out')
  end
end
