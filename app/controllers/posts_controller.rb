class PostsController < ApplicationController
  before_filter :authenticate_user!, :except => [ :index, :show ]
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /posts
  # GET /posts.json

  def index
    @posts = Post.all
  end

  # GET /posts/1
  # GET /posts/1.json


  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
   
  end

  # POST /posts
  # POST /posts.json
  def create
    @page = StaticPage.find(params[:static_page_id])
    @post = @page.posts.create(post_params)
 
    respond_to do |format|
      if @post.save
        format.html { redirect_to :controller => 'static_pages', :action => @page.name }
        format.json { render action: 'show', status: :created, location: @page }
      else
        format.html { render action: 'new' }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to :controller => 'static_pages', :action => @page.name}
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to :controller => 'static_pages', :action => @page.name}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @page = StaticPage.find(params[:static_page_id])
      @post = @page.posts.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:body, :photo)
    end

end
