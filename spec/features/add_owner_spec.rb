require 'spec_helper'

feature 'user adds a building', %Q{
  As a real estate associate
  I want to record a building owner
  So that I can keep track of our relationships with owners
} do

  # Acceptance Criteria:
  # I must specify a first name, last name, and email address
  # I can optionally specify a company name
  # If I do not specify the required information, I am presented with errors
  # If I specify the required information, the owner is recorded and I am redirected to enter another new owner

  scenario 'add an owner' do
    visit '/owners'
    click_on "Add Owner"
    fill_in "First Name", with: "John"
    fill_in "Last Name", with: "Smith"
    fill_in "Email", with: "person@example.com"
    click_on "Save Owner"

    expect(page).to have_content('Owner saved!')
    expect(page).to have_content("person@example.com")
    expect(page).to_not have_content("can't be blank")
  end

  scenario "don't submit all the required info" do
    visit '/owners'
    click_on "Add Owner"
    click_on "Save Owner"

    expect(page).to have_content("can't be blank")
  end
end
