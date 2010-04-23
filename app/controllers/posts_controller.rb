class PostsController < ApplicationController
  before_filter :authenticate_user!, :except => [:index, :show]

  def index
    @posts = Post.find(:all, :order => "id desc", :limit => 100)
    @users = User.all
  end

  def show
    @posts = Post.find_all_by_user_id(params[:id], :order => "id desc", :limit => 100)
    @users = User.all
    @editable = current_user.id = params[:id] if user_signed_in?
    render :action => 'index'
  end

  def new
    @post = Post.new
    @post.url = params[:url]
  end

  def edit
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(params[:post].merge(:user_id => current_user.id))
    if @post.save
      flash[:notice] = 'Post was successfully created.'
      render :action => 'show'
    else
      render :action => "new" 
    end
  end

  def update
    @post = Post.find(params[:id])

    if @post.update_attributes(params[:post].merge(:user_id => current_user.id))
      flash[:notice] = 'Post was successfully updated.'
      redirect_to(post_path(current_user.id)) 
    else
      render :action => "edit" 
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to(post_path(current_user.id)) 
  end
end
