require 'rails_helper.rb'

feature"User edits an Organization" do
    scenario "User successfully navigates to the Edit Org page from the List of Orgs page" do
        visit orgs_path
        expect(page).to have_content("Organizations")
        #find(:xpath, '//table/tr[contains(.,"Edit")]/td/a').click
        within('#OrgTable') do    
            #find('a[href="Edit"]').click
            #find(".Edit").click
            click_link("Edit")
        end
        
        #find_link('Edit').click
        expect(page).to have_content("Editing Organization")
        expect(page).to have_field("Name")
        expect(page).to have_field("Description")
        expect(page).to have_field("Contact")
    end
    
    
end
