class SnippetsController < ApplicationController

  def index
    @snippets = Snippet.all
  end

  def new
    @snippet = Snippet.new
  end

  def create
    @snippet = Snippet.new params.require(:snippet).permit([:kind, :title, :work])

    if @snippet.save
    redirect_to root_path
    end
  end

  def show
    @snippet = Snippet.find params[:id]
    @category = @category.snippets.new
  end
end
