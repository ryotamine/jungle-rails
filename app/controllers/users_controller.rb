class UsersController < ActionController::Base

  def index
    @users = User.order(id: :desc).all
  end

  def new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to "/"
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(
      :first_name,
      :last_name,
      :email,
      :password,
      :password_confirmation
    )
  end

end