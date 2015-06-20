class StaticPagesController < ApplicationController
  
  #before_filter :authenticate_user!, except => [:main, :visit]
  def index
    @search = Post.search do
      fulltext params[:search]
    end
    @posts = @search.results
    render 'static_pages/index'
  end


  def main
    @page = StaticPage.find_by(name: 'main')
    #@posts = @page.posts.paginate(page: params[:page])
    #@post = @page.posts.build if signed_in?

  end

   def visit
    @page = StaticPage.find_by(name: 'visit')

    #@post = @page.posts.build if signed_in?
  end

  def mbank
    @page = StaticPage.find_by(name: 'mbank')

    #@post = @page.posts.build if signed_in?
  end

  def multrp
    @page = StaticPage.find_by(name: 'multrp')

    #@post = @page.posts.build if signed_in?
  end

  def gwork
    @page = StaticPage.find_by(name: 'gwork')

    #@post = @page.posts.build if signed_in?
  end

  def school
    @page = StaticPage.find_by(name: 'school')

    #@post = @page.posts.build if signed_in?
  end

  def mass
    @page = StaticPage.find_by(name: 'mass')

    #@post = @page.posts.build if signed_in?
  end


  def news
    @page = StaticPage.find_by(name: 'news')

    #@post = @page.posts.build if signed_in?
  end

  def guest
    @page = StaticPage.find_by(name: 'guest')

    #@post = @page.posts.build if signed_in?
  end

  def spsih
    @page = StaticPage.find_by(name: 'spsih')

    #@post = @page.posts.build if signed_in?
  end 
end
