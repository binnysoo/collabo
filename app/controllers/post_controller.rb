class PostController < ApplicationController
    
    def index
        @post = Post.all
    end
    
    def new
    end
    
    def create
        @post = Post.new
        @post.title = params[:title]
        @post.contents = params[:contents]
        
        @post.save
        
        
        redirect_to '/post/index'
    end
    
end
