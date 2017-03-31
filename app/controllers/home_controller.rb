class HomeController < ApplicationController
  def index
    @hello = Post.all 
  end
  
  def add
    a = Post.new 
    a.date = params[:aa]
    a.rate = params[:bb]
    a.opinion = params[:cc]
    a.save 
    redirect_to "/home/index"
  end 
  
  def delete
    
    deleting_post = Post.find(params[:is]) 
    deleting_post.delete 
    redirect_to '/home/index'
  
  end 
  
  def modify
    @post = Post.find(params[:ll])
  end 
  
  def update 
    
    updating_post = Post.find(params[:id])
    updating_post.date = params[:date]
    updating_post.rate = params[:rate]
    updating_post.opinion = params[:opinion]
    updating_post.save 
    redirect_to '/home/index'
  end 
  
  
end
