class PortalController < ApplicationController
  def index
    @users = User.all
    @user2 = Article.new
  end

  def show 
    @user = User.find(params[:id])
  end
  
  def new 
    @article = Article.new
  end

  def create
    @firstname 
    #@user = User.new(firstname: @firstname, lastname: "...", email: "...", phone: "...", idnumber: "...")
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else 
      render :new, status::unprocessable_entity
    end
  end

  private def user_params
    params.require(:user).permit(:firstname, :lastname, :email, :phone, :idnumber)
  end
end
