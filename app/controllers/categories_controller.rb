class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
    @snippet = Snippet.new
  end

  def create
    @category = Category.find params[:id]

  end


end
