class SnippetsController < ApplicationController

  def index
    @snippets = Snippet.all
  end

  def new
    @snippet = Snippet.new
  end

  def create
    @snippet = Snippet.new params.require(:snippet).permit([:kind, :title, :work, :category_id])

    if @snippet.save
    redirect_to root_path
    end
  end

  def show
    @category = Category.find params[:id]
    @snippet = @category.snippets
  end



end
