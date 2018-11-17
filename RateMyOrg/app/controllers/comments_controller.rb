class CommentsController < ApplicationController
    def create
        @org = Org.find(params[:org_id])
        @comment = @orgs.comments.create(comment_params)
        redirect_to article_patj(@article)
    end
    
    private
        def comment_params
            params.require(:comment).permit(:body)
        end
end
