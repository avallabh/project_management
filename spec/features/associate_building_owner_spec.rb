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

  end

end
