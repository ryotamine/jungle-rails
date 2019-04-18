class RegisterController < ActionController::Base

  def index
    @registers = Register.order(id: :desc).all
  end

  def new
    @register = Register.new
  end

  def create
    @register = Register.new(register_params)

    if @register.save
      redirect_to [:user, :login], notice: 'User created!'
    else
      render :new
    end
  end

  private

  def register_params
    params.require(:register).permit(
      :first_name,
      :last_name,
      :email,
      :password,
      :password_confirmation
    )
  end

end
