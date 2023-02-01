class ArticlesController < ApplicationController
    
    def index
        @articles = Article.all 
        render json: @articles , status: 200 ,order: 'id DESC'
    end

    def create
        @article = Article.new(article_params)
        if @article.save
            render json: @article , status: 201
        else
            render status: 422
        end
    end


    def show
        @article = Article.find(params[:id])
       if @article
            render json: @article , status: 200
        else
            render status: 404
        end
    end

    

    def update
        
        render status: 405
    end

    def destroy
        render status: 405
    end

    private

    def article_params
        params.require(:article).permit(:title, :author, :category, :published_at, :content)
    end

end