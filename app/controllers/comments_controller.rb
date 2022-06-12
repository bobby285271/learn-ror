class CommentsController < ApplicationController
  def create
    @page = Page.find(params[:page_id])
    @comment = @page.comments.create(comment_params)
    redirect_to page_path(@page)
  end

  def destroy
    @page = Page.find(params[:page_id])
    @comment = @page.comments.find(params[:id])
    @comment.destroy
    redirect_to page_path(@page), status: 303
  end
    
  private
    def comment_params
      params.require(:comment).permit(:commenter, :content, :status)
    end
end
