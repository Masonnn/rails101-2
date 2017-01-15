class Account::PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    @posts = current_user.posts
  end

  def edit
    @post = current_user.posts.find(params[:post_id])
  end

  # def update
  #   @post = current_user.post.find(@post[:id])
  #
  #   if @post.save
  #     redirect_to posts_path, notice: "Update Success!"
  #   else
  #     edit
  #   end
  #
  # end
  #
  # def destroy
  #   @post = current_user.post.find(@post[:id])
  #
  #   if post.delete
  #     redirect_to posts_path, alert: "Post deleted"
  #   else
  #     index
  #   end
  # end


end
