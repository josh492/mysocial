class Signed::UsersController < Signed::BaseController

	def update
		current_user.update_attributes(user_params)
		redirect_to root_path
	end


	def user_params
      params.require(:user).permit(:avatar)
    end
end
