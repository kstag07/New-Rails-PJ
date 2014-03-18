require 'spec_helper'




describe Store do
    
    
  
    before :each do
        @store = Store.new
        @store.valid?
    end
    it { @store.should respond_to(:IceCreams) }

    
     it "should have some validation requirements" do
         @store.should_not be_valid
         end
    it "should require a full name" do
        @store.errors.full_messages.should include "Name can't be blank"
        end
    

    
    
end
