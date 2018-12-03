require 'rails_helper.rb'

feature"User navigates to the list of Organizations" do
    scenario "User successfully navigates to the List of Orgs page" do
        visit root_path
        expect(page).to have_content("Rate My Niner Org")
        click_link "List of Orgs"
        expect(page).to have_content("Organizations")
    end
end