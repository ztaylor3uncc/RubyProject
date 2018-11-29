class RatingsController < ApplicationController
    def new
        
    end
    
    def create
        @org = Org.find(params[:org_id])
        @rating = @org.ratings.create(rating_params)
        redirect_to org_path(@org)
    end
    
    private
        def rating_params
            params.require(:rate)
        end
end
