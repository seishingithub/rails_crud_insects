require 'spec_helper'

feature 'Manage Insects' do
  scenario 'User can create and view list of insects' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add an insect'
    fill_in 'Name', with: 'grasshopper'
    fill_in 'Characteristic', with: 'jumps'
    click_on 'Create insect'
    expect(page).to have_content 'grasshopper'
    expect(page).to have_content 'jumps'
  end

  scenario 'User can edit and update list of insects' do
    visit '/'
    click_on 'Add an insect'
    fill_in 'Name', with: 'grasshopper'
    fill_in 'Characteristic', with: 'jumps'
    click_on 'Create insect'
    expect(page).to have_content 'grasshopper'
    expect(page).to have_content 'jumps'
    click_on 'grasshopper'
    expect(page).to have_content 'grasshopper'
    expect(page).to have_content 'jumps'
    click_on 'Edit insect'
    fill_in 'Name', with: 'cockroach'
    fill_in 'Characteristic', with: 'scary'
    click_on 'Update insect'
    expect(page).to have_no_content 'grasshopper'
    expect(page).to have_no_content 'jumps'
    expect(page).to have_content 'cockroach'
    expect(page).to have_content 'scary'
  end
end