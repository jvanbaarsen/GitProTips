require 'spec_helper'

feature "Homepage shows tips" do
  scenario 'When there are tips' do
    FactoryGirl.create(:tip, title: 'Super title')
    FactoryGirl.create(:tip, title: 'Example TIP')
    visit root_path

    expect(page).to have_content('Super title')
    expect(page).to have_content('Example TIP')
  end

  scenario 'When there are no tips' do
    visit root_path
    expect(page).to have_content('We dont have any tips for you')
  end
end
