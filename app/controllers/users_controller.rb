class UsersController < ApplicationController
    before_action :set_user, only: [:show, :edit, :update, :destroy] 

    def update
      @user = User.find(params[:id])
      @user.admin = !@user.admin 
      @user.save 
      redirect_to root_path, notice: 'User saved' 
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end
     
    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:title, :picture, :content)
    end
end