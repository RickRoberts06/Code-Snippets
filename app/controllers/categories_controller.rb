class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def new
    @snippet = Snippet.new
  end

  def create
    @category = Category.find params[:id]
  end

  def show
    @category = Category.find params[:id]
    @snippets = @category.snippets
  end

end
