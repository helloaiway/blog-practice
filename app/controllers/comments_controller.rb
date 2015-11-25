class CommentsController < ApplicationController
  def new
  	@comment = Comment.new(comment_params)
  	@mircopost = Mircopost.find_by(:id => params[:comment][:mircopost])
  	@comment.user = current_user
  	@comment.mircopost = @mircopost
	respond_to do |format|
	  if @comment.save
	    format.html { redirect_to mircopost_url(@mircopost), success: 'Comment was successfully created.' }
	    format.json { render :show, status: :ok, location: @comment }
	  else
	    format.html { render :edit }
	    format.json { render json: @comment.errors, status: :unprocessable_entity }
	  end
	end
  end

  private 
  	def comment_params
  		params.require(:comment).permit(:content)
  	end
end
