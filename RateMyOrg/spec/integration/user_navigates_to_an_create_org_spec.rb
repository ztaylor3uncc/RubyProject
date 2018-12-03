require 'rails_helper.rb'

feature"User navigates to the Organization create form " do
    scenario "User successfully navigates to the new Org page from the List of Orgs page" do
        visit orgs_path
        expect(page).to have_content("Organizations")
        click_link "Add Organization"
        expect(page).to have_content("Adding Organization")
        expect(page).to have_field("Name")
        expect(page).to have_field("Description")
        expect(page).to have_field("Contact")
    end
end
