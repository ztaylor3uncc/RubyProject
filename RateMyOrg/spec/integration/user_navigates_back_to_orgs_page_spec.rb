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
        find("img[src*='back-c0c4459e32cd6731c0a90400645741f0cb5daa6356844880610fb7681999fafe.png']").click
        #visit orgs_path
        expect(page).to have_content("Organizations")
    end
end