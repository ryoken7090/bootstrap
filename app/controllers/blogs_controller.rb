class BlogsController < ApplicationController
  def new
    @blog = Blog.new
  end
  def create
    @blog = Blog.create(content: params[:blog][:content])
    redirect_to blogs_path
  end
  def index
    @blogs = Blog.all
  end
end
