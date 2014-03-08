class IceCreamsController < ApplicationController
    
    def new
        @icecream = IceCream.new
     
        end
    
    def create
        safe_params = params.require(:icecream).permit(:title)
            @icecream = IceCream.new 
            safe_params
            if @icecream.save
                redirect_to_stores_path
                
                else
               flash[:notice]= "Ice cream Didn't Save!!"
                
                render :new
        end
    end
end