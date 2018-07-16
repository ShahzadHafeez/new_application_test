class ArticlesController < ApplicationController

def home
end

def about
end

def show
	@article=Article.find(params[:id])
end

def new
	@article=Article.new
end

def create
	@article=Article.new(params_article)
	if @article.save
	    flash[:notice] = "Article was succesfully created"
	    redirect_to article_path(@article)
    else
    	render 'new'

    end
end



private

def params_article
	params.require(:article).permit(:title, :description)
end



end
