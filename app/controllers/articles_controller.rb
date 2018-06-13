class ArticlesController < ApplicationController
   
   def new
       @articles = Article.new

    end
    
    def create
        #render plain: params[:article].inspect
        @article = Article.new(article_params) 
        @article.save
        redirect to article_path(@article)
    
    end
   
   private
   
   def article_params
        params.require(:article).permit(:title, :description)
    
       
    end
    
end