require 'rails_helper.rb'

feature"User creates a new Organization" do
scenario "User successfully creates a Organization" do
        visit new_org_path
        expect(page).to have_content("Adding Organization")
        fill_in "Name", with: "New Organizaiton Note"
        fill_in "Description", with: "This is a new Organization Note"
        fill_in "Contact", with: "Test Organization"
        click_button "Submit"
        expect(page).to have_content("New Organizaiton Note")
        expect(page).to have_content("This is a new Organization Note")
        expect(page).to have_content("Test Organization")
    end
end

