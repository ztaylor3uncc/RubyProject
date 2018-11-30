require 'rails_helper.rb'

feature"User adds a Organization" do
    scenario "User successfully navigates to the new Org page from the List of Orgs page" do
        visit orgs_path
        expect(page).to have_content("Organizations")
        click_link "Add Organization"
        expect(page).to have_content("Adding Organization")
        expect(page).to have_field("Name")
        expect(page).to have_field("Description")
        expect(page).to have_field("Contact")
    end
    
    scenario "User successfully creates a Organization" do
        visit new_org_path
        expect(page).to have_content("Adding Organization")
        fill_in "Name", with: "New Organizaiton Note"
        fill_in "Description", with: "This is a new Organization Note"
        fill_in "Contact", with: "Test Organization"
        click_button "Save Orgs"
        expect(page).to have_content("New Organizaiton Note")
        expect(page).to have_content("This is a new Organization Note")
        expect(page).to have_content("Test Organization")
    end
end
