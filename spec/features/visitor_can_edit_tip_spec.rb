require 'spec_helper'

feature 'Visitor can edit tip' do
  scenario 'with valid information' do
    tip = create(:tip)
    visit edit_tip_path(tip)
    fill_in "Title", with: 'New title'
    fill_in "Content", with: "New content"
    click_button "Update tip"
    expect(current_path).to eq(tip_path(tip))
    expect(page).to have_content("Your tip has been updated")
    expect(page).to have_content("New title")
    expect(page).to have_content("New content")
  end
end
