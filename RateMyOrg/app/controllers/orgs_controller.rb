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
    
    def destroy
        @org = Org.find(params[:id])
        @org.destroy
        
        redirect_to orgs_path
    end
end

private
 def org_params
     params.require(:orgs).permit(:name, :description, :contact)
 end