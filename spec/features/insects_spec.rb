require 'spec_helper'

feature 'Manage Insects' do
  scenario 'User can create and view list of insects' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add an insect'
    fill_in 'Name', with: 'grasshopper'
    fill_in 'Characteristic', with: 'jumps'
    click_on 'Create   insect'
    expect(page).to have_content 'grasshopper'
    expect(page).to have_content 'jumps'
  end
end