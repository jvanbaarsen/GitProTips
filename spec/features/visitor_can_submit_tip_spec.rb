require 'spec_helper'

feature 'Visitor can submit tip' do
  scenario 'With valid information' do
    visit root_path
    click_link "Submit your tip"

    fill_in "Title", with: 'Tip title'
    fill_in "Content", with: 'Awesome tip content'
    click_button "Submit tip"
    expect(current_path).to eq(tip_path(Tip.last.id))
    expect(page).to have_content('Your tip has been submitted')
  end
end
