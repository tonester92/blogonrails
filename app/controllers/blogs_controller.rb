class BlogsController < ApplicationController
  def index
    @blogs = Blog.all 
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def new
    @blog = Blog.new
  end

  def create 
    @blog = Blog.create(blog_params)

    if @blog.save 
      redirect_to @blog 
    else 
      render :new
    end
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update 
    @blog = Blog.find(params[:id])
  end

  private 

  def blog_params
    params.require(:blog).permit(:title, :content)
  end
end
