require 'spec_helper'

feature 'associate an owner with buildings', %Q{
  As a real estate associate
  I want to correlate an owner with buildings
  So that I can refer back to pertinent information
} do

# Acceptance Criteria:
# * When recording a building, I want to optionally associate
#   the building with its rightful owner.
#   (Building has 1 Owner, Owner has many buildings)
# * If I delete an owner, the owner and its primary key should no longer be associated
#   with any properties.

  scenario 'associate an owner with a building' do
    place = FactoryGirl.create(:property)
    email = "johnsmith@place.com"

    visit root_path
    click_on "Add Building"
    fill_in "Address", with: place.address
    fill_in "City", with: place.city
    select "Ohio", from: "State"
    fill_in "Zip", with: place.zip
    select email, from: "Owner"
    click_on "Save Building"

    expect(page).to have_content('Building saved!')
    expect(page).to have_content(place.address)
    expect(page).to_not have_content("can't be blank")

  end

end
