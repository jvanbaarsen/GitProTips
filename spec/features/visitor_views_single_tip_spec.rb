require 'spec_helper'

feature 'Visitor views single tip' do
  scenario 'When its a existing tip' do
    tip = FactoryGirl.create(:tip)
    visit root_path
    click_link tip.title
    expect(current_path).to eq(tip_path(tip))
    expect(page).to have_content(tip.title)
  end
end
