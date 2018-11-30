require 'rails_helper.rb'

feature"User navigates to the list of Organization" do
    scenario "User successfully navigates to the List of Orgs page" do
        visit orgs_path
        expect(page).to have_content("Organizations")
    end
end