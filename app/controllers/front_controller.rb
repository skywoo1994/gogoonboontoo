class FrontController < ApplicationController
    def index
        @posts=Post.all
    end
    
    def map
    end
end
