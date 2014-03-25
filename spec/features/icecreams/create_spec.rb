require 'spec_helper'



    
describe "Creating store list" do
    
    before :each do
     visit "/users/sign_up"
     fill_in "Email", with: "user@example.com"
     fill_in "Password", with: "Password1234"
     fill_in "Password confirmation", with: "Password1234"
     click_button "Sign up"
end
    
    it "redirects to the store index page on success" do
        
        visit stores_path
        click_link "New Store"
        
   expect(page.body).to have_content("Name")
        
        fill_in "Name", with: "Seven Eleven"
        fill_in "Address", with: "50th street and 1st ave"
        click_button "Create Store"
        
        
        expect(page.body).to have_content("Seven Eleven")
        
        end
    
    it "displays an error when the store has no name" do
         visit "/stores"
        click_link "New Store"
    expect(page.body).to have_content("New store")
        
        fill_in "Name", with: ""
        fill_in "Address", with: "50th street and 1st ave"
        click_button "Create Store"
        within "div.flash" do
            expect(page.body).to have_content("There was a problem adding the name")
            end
        #expect(page.body).to have_content("error")
        visit "/stores"
        
        expect(page.body).to_not have_content("50th street and 1st ave")
        
        
        
        end
    
    end

        
    