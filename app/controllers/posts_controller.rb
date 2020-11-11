class PostsController < ApplicationController

  def index  # indexアクションを定義した
    @posts = Post.all.order(id: "DESC")  # すべてのレコードを@postsに代入
  end
  
  # def new
  # end  削除した

  def create
    Post.create(content: params[:content])
    redirect_to action: :index
  end
end