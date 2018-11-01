class OrgsController < ApplicationController
    
    def new
        
    end
    
    def create
        render plain: params[:orgs].inspect
    end
end
