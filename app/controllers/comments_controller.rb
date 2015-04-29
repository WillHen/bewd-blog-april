class CommentsController < ApplicationController
  def new
      # find the post
      #assign new empty comment to @comment
  end

  def create
      #assign a new comment with form data to @comment
      #if it saves 
      #flash success
      # and redirect to show post
      #else 
      # flash error 
      #render new
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
end
