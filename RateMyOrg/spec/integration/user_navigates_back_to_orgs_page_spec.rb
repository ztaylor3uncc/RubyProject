require 'rails_helper.rb'

feature"User navigates back to the List of Orgs form" do
    scenario "User successfully navigates back from creating a new form to the List of Orgs page" do
        visit orgs_path
        expect(page).to have_content("Organizations")
        click_link "Add Organization"
        expect(page).to have_content("Adding Organization")
        expect(page).to have_field("Name")
        expect(page).to have_field("Description")
        expect(page).to have_field("Contact")
        click_link "Back"
        expect(page).to have_content("Organizations")
    end
end