class CommentsController < ApplicationController
    def new
        
    end
    
    def create
        @org = Org.find(params[:org_id])
        @comment = @org.comments.create(comment_params)
        redirect_to org_path(@org)
    end
    
    private
        def comment_params
            params.require(:comment).permit(:body)
        end
end
