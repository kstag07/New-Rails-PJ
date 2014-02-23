class VisitorsController < ApplicationController
    
    def new
        @flavor = Flavor.new
        render 'visitors/new'
        end
end