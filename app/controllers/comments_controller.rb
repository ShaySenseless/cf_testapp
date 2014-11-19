class CommentsController < ApplicationController
  def create
    @blog = Blog.find(params[:blog_id])
    respond_to do |format|
      if @blog.save
        format.html { redirect_to @blog, notice: 'Blog was successfully created.' }
        format.js   {}
        format.json { render json: @blog, status: :created, location: @blog }
      else
        format.html { render action: "new" }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
    @comment = @blog.comments.create(comment_params)
    # redirect_to blog_path(@blog)
  end
 
  # @blog = Blog.new(params[:blog_id])

	def destroy
	    @blog = Blog.find(params[:blog_id])
	    @comment = @blog.comments.find(params[:id])
	    @comment.destroy
	    redirect_to blog_path(@blog)
	  end

def show
      @blog = Blog.find(params[:blog_id])
      @comment = @blog.comments.find(params[:id])
      @comment.destroy
      redirect_to blog_path(@blog)
    end

    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end

	  
  private

end