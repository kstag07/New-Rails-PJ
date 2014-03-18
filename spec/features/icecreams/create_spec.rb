require 'spec_helper'


describe "Creating store list" do
    it "redirects to the store index page on success" do
        visit "/stores"
        click_link "New Store"
    expect(page).to have_content("New store")
        
        fill_in "Name", with: "Seven Eleven"
        fill_in "Address", with: "50th street and 1st ave"
        click_button "Create Store"
        
        
        expect(page).to have_content("Listing Stores")
        
        end
    
    it "displays an error when the store has no name" do
        
         visit "/stores"
        click_link "New Store"
    expect(page).to have_content("New store")
        
        fill_in "Name", with: ""
        fill_in "Address", with: "50th street and 1st ave"
        click_button "Create Store"
        
        expect(page).to have_content("error")
        visit "/stores"
        
        expect(page).to_not have_content("50th street and 1st ave")
        
        
        
        end
    
    end

        
    