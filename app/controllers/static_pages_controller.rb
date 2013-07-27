class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def about
  end

  def contact
  end

  def search
   @search = Idea.search(params[:q])
   @ideas = @search.result
  end 
  
  def terms
  end

  def privacy
  end

  def security
  end
end
