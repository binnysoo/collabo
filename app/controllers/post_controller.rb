class PostController < ApplicationController
    
    def main
        @post = Post.all
    end
    
    def new
    end
    
    def create
        @post = Post.new
        @post.title = params[:title]
        @post.content = params[:content]
        
        @post.save
        
        redirect_to '/post/main'
    end
    
end
