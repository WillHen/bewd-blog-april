class PostsController < ApplicationController
    before_action :find_post, except: [:index, :new, :create]
    
  def index
      #assign all posts to @posts
      @posts = Post.all
      #render the index template (happening behind the scenes)
  end
  def show
      #assign one post to @post
      #render show template (impicaity rendering in the background)
  end
    
  def new
      #assign a new empty post instance to @post
      @post = Post.new
      #render new template
  end
    def create
        @post = Post.create(post_params)
        #assign a new posts conaining the form data.
        if @post.save
            flash[:success] = "Successfully added a post."
            redirect_to @post
       else 
            flash[:error] = t(:error_msg)
            render :new
        end
  end

  def edit
    #  assign the post we want to edit to @post
      # render edit template
  end

    def update
        # assign the post we want to edit to post
        if @post.saves 
            flash[:success] = "Your post was Updated."
            redirect_to @post
        else
            flash[:error] = t(:error_msg)
            render :edit
        end
        # else render edit
    end
    
    def destroy
        #delete the post
        post.destroy
        flash[:success] = "#{post.title} was removed"
        #redirect to home page was removed
        post = nil
        redirect_to root_path
    end
    
    private
    def post_params
        params.require(:post).permit(:title, :publication, :published_at, :url, :author, :body, :pull_quote)
        end
    
    def find_post
        @post = Post.find(params[:id])
    end
    end
