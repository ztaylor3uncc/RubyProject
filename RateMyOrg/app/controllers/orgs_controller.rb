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
    
    def edit
        @org = Org.find(params[:id])
    end
    
    def update
        @org = Org.find(params[:id])
        
        if @org.update(org_param)
            redirect_to @org
        else
            render 'edit'
        end
        
    end
end

private
 def org_params
     params.require(:orgs).permit(:name, :description, :contact)
 end
 
 def org_param
     params.require(:org).permit(:name, :description, :contact)
 end