require 'spec_helper'

feature 'user adds a building', %Q{
  As a real estate associate
  I want to record a building
  So that I can refer back to pertinent information
} do


  # Acceptance Criteria:

  # I must specify a street address, city, state, and postal code
  # Only US states can be specified
  # I can optionally specify a description of the building
  # If I enter all of the required information in the required format, the building is recorded.
  # If I do not specify all of the required information in the required formats, the building is not recorded and I am presented with errors
  # Upon successfully creating a building, I am redirected so that I can record another building.

  scenario 'add a building' do
    visit root_path
    click_on "Add Building"
    fill_in "Address", with: "1234 Awesome Street"
    fill_in "City", with: "Boston"
    fill_in "State", with: "OH - Ohio"
    fill_in "Zip", with: "12345"
    #fill_in "Description", with: "Yes"
    click_on "Save Building"

    expect(page).to have_content('Building saved!')
    expect(page).to have_content("1234 Awesome Street")
    expect(page).to_not have_content("can't be blank")
  end
end
