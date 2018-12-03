require 'rails_helper.rb'

feature"User refreshes the list of Organizations" do
    scenario "User successfully refreshes the Organizations" do
        visit orgs_path
        expect(page).to have_content("Organizations")
        click_link "Organizations"
        expect(page).to have_content("Organizations")
    end
end