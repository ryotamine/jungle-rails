class RegisterController < ActionController::Base

  def index
    @registers = Register.order(id: :desc).all
  end

end