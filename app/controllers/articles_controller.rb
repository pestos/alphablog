class ArticlesController < ApplicationController
   
    def new
       @articles = Article.new

    end
    
    def create
        
        @article = Article.new(article_params) 
        if @article.save
            flash[:notice] = 'Article belle est bien crée'
            redirect to articles_path(@article)
        else
            render 'new'
        end
   end
   
   
   private
   
   def article_params
        params.require(:article).permit(:title, :description)
    
       
    end
    
    def show
        
        @article = Aritcle.find(params[:id])
    end
