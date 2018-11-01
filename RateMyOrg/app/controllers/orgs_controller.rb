class OrgsController < ApplicationController
    
    def index
        @orgs = Org.all
    end
    
    def show
        @org = Org.find(params[:id])
    end
    
    def new
        
    end
    
    def create
        @org = Org.new(org_params)
        
        @org.save
        redirect_to @org
    end
end

private
 def org_params
     params.require(:orgs).permit(:name, :description, :contact)
 end