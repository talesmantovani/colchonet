class UsersController < ApplicationController
  protect_from_forgery

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    binding.pry
    @user = User.new(user_params)
    if @user.save
      redirect_to @user, :notice => 'Cadastro criado com sucesso!'
    else
      render :new
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:bio, :email, :full_name, :location, :password,
                  :password_confirmation)
    end
end
