class CommentsController < ApplicationController
  def new
      # find the post
      @post = Post.find(params[:post_id])
      #assign new empty comment to @comment
      @comment = @post.comments.new
  end

  def create
      #assign a new comment with form data to @comment
      @post = Post.find(params[:post_id])
      @comment = @post.comments.new(comment_params)
      if @comment.save 
      flash[:success] = "Thanks for commenting on #{@post.title}"
      redirect_to @post
      else 
      flash[:error] = t(:error_msg)
      render :new
     end
  end
  def edit
      #find the post
      #Assign the comment to @comment
   
  end
    
    def update
        #find the post
      #assign the comment with DB data
    #if it updates with DB data
      #flash success
      #and redirect to show post page
      #else 
      #flash error
    end
    
    def destroy
        #find the post
        #delete comment
        #redirect to show post
    end
    #whitelist data from the form  
    private
    def comment_params
        params.require(:comment).permit(:body, :commenter)
    end
end
