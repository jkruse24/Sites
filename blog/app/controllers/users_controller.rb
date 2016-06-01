class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
  @user = User.new
  end

  def create
    @user = User.new(user_params)
	  if @user.save
      log_in @user
      flash[:success] = "Welcome to the Blog Site!"
      redirect_to @user
    else
      render 'new'
    end



  end


    private #Practice an extra layer of indentation on private methods (distinction)
      def user_params
        params.require(:user).permit(:name, :email, :password,
                                    :password_confirmation)
      end
end
