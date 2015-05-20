class StaticPagesController < ApplicationController
  
  #before_filter :authenticate_user!, except => [:main, :visit]

  def main
    @page = StaticPage.find_by(name: 'main')
    #@posts = @page.posts.paginate(page: params[:page])
    @post = @page.posts.build if signed_in?
  end

   def visit
    @page = StaticPage.find_by(name: 'visit')

    @post = @page.posts.build if signed_in?
  end

  def mbank
  end

  def multrp
  end

  def gwork
  end

  def school
  end

  def mass
  end

  def news
  end

  def guest
  end

  def spsih
  end

 

 
end
